.class public final enum Lkotlin/internal/RequireKotlinVersionKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/internal/RequireKotlinVersionKind;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "1.2"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/internal/RequireKotlinVersionKind;

.field public static final enum API_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

.field public static final enum COMPILER_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

.field public static final enum LANGUAGE_VERSION:Lkotlin/internal/RequireKotlinVersionKind;


# direct methods
.method private static final synthetic $values()[Lkotlin/internal/RequireKotlinVersionKind;
    .locals 3

    sget-object v0, Lkotlin/internal/RequireKotlinVersionKind;->LANGUAGE_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

    sget-object v1, Lkotlin/internal/RequireKotlinVersionKind;->COMPILER_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

    sget-object v2, Lkotlin/internal/RequireKotlinVersionKind;->API_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

    filled-new-array {v0, v1, v2}, [Lkotlin/internal/RequireKotlinVersionKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/internal/RequireKotlinVersionKind;

    .line 2
    .line 3
    const-string v1, "LANGUAGE_VERSION"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lkotlin/internal/RequireKotlinVersionKind;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->LANGUAGE_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

    .line 10
    .line 11
    new-instance v0, Lkotlin/internal/RequireKotlinVersionKind;

    .line 12
    .line 13
    const-string v1, "COMPILER_VERSION"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lkotlin/internal/RequireKotlinVersionKind;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->COMPILER_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

    .line 20
    .line 21
    new-instance v0, Lkotlin/internal/RequireKotlinVersionKind;

    .line 22
    .line 23
    const-string v1, "API_VERSION"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lkotlin/internal/RequireKotlinVersionKind;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->API_VERSION:Lkotlin/internal/RequireKotlinVersionKind;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/internal/RequireKotlinVersionKind;->$values()[Lkotlin/internal/RequireKotlinVersionKind;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->$VALUES:[Lkotlin/internal/RequireKotlinVersionKind;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 42
    .line 43
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
            "Lkotlin/internal/RequireKotlinVersionKind;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/internal/RequireKotlinVersionKind;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/internal/RequireKotlinVersionKind;
    .locals 1

    .line 1
    const-class v0, Lkotlin/internal/RequireKotlinVersionKind;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlin/internal/RequireKotlinVersionKind;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lkotlin/internal/RequireKotlinVersionKind;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/internal/RequireKotlinVersionKind;->$VALUES:[Lkotlin/internal/RequireKotlinVersionKind;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkotlin/internal/RequireKotlinVersionKind;

    .line 8
    .line 9
    return-object v0
.end method
