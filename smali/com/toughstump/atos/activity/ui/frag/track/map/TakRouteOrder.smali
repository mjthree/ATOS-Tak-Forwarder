.class public final enum Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

.field public static final enum Ascending:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

.field public static final enum Descending:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;


# instance fields
.field private final id:I

.field private final text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;
    .locals 2

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->Ascending:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    sget-object v1, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->Descending:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    filled-new-array {v0, v1}, [Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Ascending Check Points"

    .line 5
    .line 6
    const-string v3, "Ascending"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->Ascending:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 12
    .line 13
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "Descending Check Points"

    .line 17
    .line 18
    const-string v3, "Descending"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->Descending:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 24
    .line 25
    invoke-static {}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->$values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->$VALUES:[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 36
    .line 37
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
    iput p3, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->id:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->text:Ljava/lang/String;

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
            "Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;
    .locals 1

    .line 1
    const-class v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->$VALUES:[Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteOrder;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
