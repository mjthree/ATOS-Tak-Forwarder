.class public final enum Lcom/toughstump/atos/record/route/TakRouteDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/record/route/TakRouteDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/toughstump/atos/record/route/TakRouteDirection;

.field public static final enum Exfil:Lcom/toughstump/atos/record/route/TakRouteDirection;

.field public static final enum Infil:Lcom/toughstump/atos/record/route/TakRouteDirection;


# instance fields
.field private final id:I

.field private final text:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/record/route/TakRouteDirection;
    .locals 2

    sget-object v0, Lcom/toughstump/atos/record/route/TakRouteDirection;->Infil:Lcom/toughstump/atos/record/route/TakRouteDirection;

    sget-object v1, Lcom/toughstump/atos/record/route/TakRouteDirection;->Exfil:Lcom/toughstump/atos/record/route/TakRouteDirection;

    filled-new-array {v0, v1}, [Lcom/toughstump/atos/record/route/TakRouteDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 2
    .line 3
    const-string v1, "Infil"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2, v1}, Lcom/toughstump/atos/record/route/TakRouteDirection;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteDirection;->Infil:Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 10
    .line 11
    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 12
    .line 13
    const-string v1, "Exfil"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2, v1}, Lcom/toughstump/atos/record/route/TakRouteDirection;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteDirection;->Exfil:Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 20
    .line 21
    invoke-static {}, Lcom/toughstump/atos/record/route/TakRouteDirection;->$values()[Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/toughstump/atos/record/route/TakRouteDirection;->$VALUES:[Lcom/toughstump/atos/record/route/TakRouteDirection;

    .line 26
    .line 27
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
    iput p3, p0, Lcom/toughstump/atos/record/route/TakRouteDirection;->id:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/toughstump/atos/record/route/TakRouteDirection;->text:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/record/route/TakRouteDirection;
    .locals 1

    const-class v0, Lcom/toughstump/atos/record/route/TakRouteDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/record/route/TakRouteDirection;

    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/record/route/TakRouteDirection;
    .locals 1

    sget-object v0, Lcom/toughstump/atos/record/route/TakRouteDirection;->$VALUES:[Lcom/toughstump/atos/record/route/TakRouteDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toughstump/atos/record/route/TakRouteDirection;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/record/route/TakRouteDirection;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRouteDirection;->text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
