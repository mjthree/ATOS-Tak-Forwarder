.class public final enum Lkotlin/io/encoding/Base64$PaddingOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/encoding/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaddingOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/io/encoding/Base64$PaddingOption;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/SinceKotlin;
    version = "2.0"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lkotlin/io/encoding/Base64$PaddingOption;

.field public static final enum ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

.field public static final enum ABSENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

.field public static final enum PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

.field public static final enum PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;


# direct methods
.method private static final synthetic $values()[Lkotlin/io/encoding/Base64$PaddingOption;
    .locals 4

    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    sget-object v1, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    sget-object v2, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    sget-object v3, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    filled-new-array {v0, v1, v2, v3}, [Lkotlin/io/encoding/Base64$PaddingOption;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/io/encoding/Base64$PaddingOption;

    .line 2
    .line 3
    const-string v1, "PRESENT"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lkotlin/io/encoding/Base64$PaddingOption;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 10
    .line 11
    new-instance v0, Lkotlin/io/encoding/Base64$PaddingOption;

    .line 12
    .line 13
    const-string v1, "ABSENT"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lkotlin/io/encoding/Base64$PaddingOption;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 20
    .line 21
    new-instance v0, Lkotlin/io/encoding/Base64$PaddingOption;

    .line 22
    .line 23
    const-string v1, "PRESENT_OPTIONAL"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lkotlin/io/encoding/Base64$PaddingOption;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 30
    .line 31
    new-instance v0, Lkotlin/io/encoding/Base64$PaddingOption;

    .line 32
    .line 33
    const-string v1, "ABSENT_OPTIONAL"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lkotlin/io/encoding/Base64$PaddingOption;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->ABSENT_OPTIONAL:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 40
    .line 41
    invoke-static {}, Lkotlin/io/encoding/Base64$PaddingOption;->$values()[Lkotlin/io/encoding/Base64$PaddingOption;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->$VALUES:[Lkotlin/io/encoding/Base64$PaddingOption;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 52
    .line 53
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
            "Lkotlin/io/encoding/Base64$PaddingOption;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/io/encoding/Base64$PaddingOption;
    .locals 1

    .line 1
    const-class v0, Lkotlin/io/encoding/Base64$PaddingOption;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lkotlin/io/encoding/Base64$PaddingOption;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lkotlin/io/encoding/Base64$PaddingOption;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/io/encoding/Base64$PaddingOption;->$VALUES:[Lkotlin/io/encoding/Base64$PaddingOption;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lkotlin/io/encoding/Base64$PaddingOption;

    .line 8
    .line 9
    return-object v0
.end method
