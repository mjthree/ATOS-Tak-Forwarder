.class public final enum Lcom/toughstump/atos/record/route/TriggerMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/record/route/TriggerMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/record/route/TriggerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/toughstump/atos/record/route/TriggerMode;

.field public static final Companion:Lcom/toughstump/atos/record/route/TriggerMode$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DISTANCE:Lcom/toughstump/atos/record/route/TriggerMode;

.field public static final enum ETA:Lcom/toughstump/atos/record/route/TriggerMode;


# instance fields
.field private final _mode:C


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/record/route/TriggerMode;
    .locals 2

    sget-object v0, Lcom/toughstump/atos/record/route/TriggerMode;->DISTANCE:Lcom/toughstump/atos/record/route/TriggerMode;

    sget-object v1, Lcom/toughstump/atos/record/route/TriggerMode;->ETA:Lcom/toughstump/atos/record/route/TriggerMode;

    filled-new-array {v0, v1}, [Lcom/toughstump/atos/record/route/TriggerMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/toughstump/atos/record/route/TriggerMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x64

    .line 5
    .line 6
    const-string v3, "DISTANCE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/record/route/TriggerMode;-><init>(Ljava/lang/String;IC)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/toughstump/atos/record/route/TriggerMode;->DISTANCE:Lcom/toughstump/atos/record/route/TriggerMode;

    .line 12
    .line 13
    new-instance v0, Lcom/toughstump/atos/record/route/TriggerMode;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/16 v2, 0x74

    .line 17
    .line 18
    const-string v3, "ETA"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/toughstump/atos/record/route/TriggerMode;-><init>(Ljava/lang/String;IC)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/toughstump/atos/record/route/TriggerMode;->ETA:Lcom/toughstump/atos/record/route/TriggerMode;

    .line 24
    .line 25
    invoke-static {}, Lcom/toughstump/atos/record/route/TriggerMode;->$values()[Lcom/toughstump/atos/record/route/TriggerMode;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/toughstump/atos/record/route/TriggerMode;->$VALUES:[Lcom/toughstump/atos/record/route/TriggerMode;

    .line 30
    .line 31
    new-instance v0, Lcom/toughstump/atos/record/route/TriggerMode$Companion;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, v1}, Lcom/toughstump/atos/record/route/TriggerMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/toughstump/atos/record/route/TriggerMode;->Companion:Lcom/toughstump/atos/record/route/TriggerMode$Companion;

    .line 38
    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-char p3, p0, Lcom/toughstump/atos/record/route/TriggerMode;->_mode:C

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/record/route/TriggerMode;
    .locals 1

    const-class v0, Lcom/toughstump/atos/record/route/TriggerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/record/route/TriggerMode;

    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/record/route/TriggerMode;
    .locals 1

    sget-object v0, Lcom/toughstump/atos/record/route/TriggerMode;->$VALUES:[Lcom/toughstump/atos/record/route/TriggerMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toughstump/atos/record/route/TriggerMode;

    return-object v0
.end method


# virtual methods
.method public final toValue()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/toughstump/atos/record/route/TriggerMode;->_mode:C

    .line 2
    .line 3
    return v0
.end method
