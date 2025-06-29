.class public final enum Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

.field public static final enum ACTIVITY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

.field public static final enum MAP:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;
    .locals 2

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->MAP:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    sget-object v1, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->ACTIVITY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    filled-new-array {v0, v1}, [Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 2
    .line 3
    const-string v1, "MAP"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->MAP:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 10
    .line 11
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 12
    .line 13
    const-string v1, "ACTIVITY"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->ACTIVITY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 20
    .line 21
    invoke-static {}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->$values()[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->$VALUES:[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 32
    .line 33
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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;
    .locals 1

    .line 1
    const-class v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->$VALUES:[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 8
    .line 9
    return-object v0
.end method
