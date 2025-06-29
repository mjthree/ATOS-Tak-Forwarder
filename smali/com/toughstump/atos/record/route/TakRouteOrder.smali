.class public final enum Lcom/toughstump/atos/record/route/TakRouteOrder;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/record/route/TakRouteOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/toughstump/atos/record/route/TakRouteOrder;

.field public static final enum Ascending:Lcom/toughstump/atos/record/route/TakRouteOrder;

.field public static final enum Descending:Lcom/toughstump/atos/record/route/TakRouteOrder;


# instance fields
.field private final id:I

.field private final text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/record/route/TakRouteOrder;
    .locals 2

    sget-object v0, Lcom/toughstump/atos/record/route/TakRouteOrder;->Ascending:Lcom/toughstump/atos/record/route/TakRouteOrder;

    sget-object v1, Lcom/toughstump/atos/record/route/TakRouteOrder;->Descending:Lcom/toughstump/atos/record/route/TakRouteOrder;

    filled-new-array {v0, v1}, [Lcom/toughstump/atos/record/route/TakRouteOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteOrder;

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
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/toughstump/atos/record/route/TakRouteOrder;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteOrder;->Ascending:Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 12
    .line 13
    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteOrder;

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
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/toughstump/atos/record/route/TakRouteOrder;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteOrder;->Descending:Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 24
    .line 25
    invoke-static {}, Lcom/toughstump/atos/record/route/TakRouteOrder;->$values()[Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteOrder;->$VALUES:[Lcom/toughstump/atos/record/route/TakRouteOrder;

    .line 30
    .line 31
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
    iput p3, p0, Lcom/toughstump/atos/record/route/TakRouteOrder;->id:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/toughstump/atos/record/route/TakRouteOrder;->text:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/record/route/TakRouteOrder;
    .locals 1

    const-class v0, Lcom/toughstump/atos/record/route/TakRouteOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/record/route/TakRouteOrder;

    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/record/route/TakRouteOrder;
    .locals 1

    sget-object v0, Lcom/toughstump/atos/record/route/TakRouteOrder;->$VALUES:[Lcom/toughstump/atos/record/route/TakRouteOrder;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toughstump/atos/record/route/TakRouteOrder;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/record/route/TakRouteOrder;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRouteOrder;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
