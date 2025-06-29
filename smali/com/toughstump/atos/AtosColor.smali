.class public final enum Lcom/toughstump/atos/AtosColor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/AtosColor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/AtosColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/toughstump/atos/AtosColor;

.field public static final enum BLUE:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Blue"
    .end annotation
.end field

.field public static final enum CYAN:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Cyan"
    .end annotation
.end field

.field public static final Companion:Lcom/toughstump/atos/AtosColor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DARK_GREEN:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Dark Green"
    .end annotation
.end field

.field public static final enum GREEN:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Green"
    .end annotation
.end field

.field public static final enum MAGENTA:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Magenta"
    .end annotation
.end field

.field public static final enum MAROON:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Maroon"
    .end annotation
.end field

.field public static final enum ORANGE:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Orange"
    .end annotation
.end field

.field public static final enum PURPLE:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Purple"
    .end annotation
.end field

.field public static final enum RED:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Red"
    .end annotation
.end field

.field public static final enum TEAL:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Teal"
    .end annotation
.end field

.field public static final enum WHITE:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "White"
    .end annotation
.end field

.field public static final enum YELLOW:Lcom/toughstump/atos/AtosColor;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Yellow"
    .end annotation
.end field


# instance fields
.field private final friendlyName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rgba:I


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/AtosColor;
    .locals 12

    sget-object v0, Lcom/toughstump/atos/AtosColor;->WHITE:Lcom/toughstump/atos/AtosColor;

    sget-object v1, Lcom/toughstump/atos/AtosColor;->YELLOW:Lcom/toughstump/atos/AtosColor;

    sget-object v2, Lcom/toughstump/atos/AtosColor;->ORANGE:Lcom/toughstump/atos/AtosColor;

    sget-object v3, Lcom/toughstump/atos/AtosColor;->MAGENTA:Lcom/toughstump/atos/AtosColor;

    sget-object v4, Lcom/toughstump/atos/AtosColor;->RED:Lcom/toughstump/atos/AtosColor;

    sget-object v5, Lcom/toughstump/atos/AtosColor;->MAROON:Lcom/toughstump/atos/AtosColor;

    sget-object v6, Lcom/toughstump/atos/AtosColor;->PURPLE:Lcom/toughstump/atos/AtosColor;

    sget-object v7, Lcom/toughstump/atos/AtosColor;->BLUE:Lcom/toughstump/atos/AtosColor;

    sget-object v8, Lcom/toughstump/atos/AtosColor;->CYAN:Lcom/toughstump/atos/AtosColor;

    sget-object v9, Lcom/toughstump/atos/AtosColor;->TEAL:Lcom/toughstump/atos/AtosColor;

    sget-object v10, Lcom/toughstump/atos/AtosColor;->GREEN:Lcom/toughstump/atos/AtosColor;

    sget-object v11, Lcom/toughstump/atos/AtosColor;->DARK_GREEN:Lcom/toughstump/atos/AtosColor;

    filled-new-array/range {v0 .. v11}, [Lcom/toughstump/atos/AtosColor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 2
    .line 3
    const-string v1, "White"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const-string v3, "WHITE"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/toughstump/atos/AtosColor;->WHITE:Lcom/toughstump/atos/AtosColor;

    .line 13
    .line 14
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 15
    .line 16
    const-string v1, "Yellow"

    .line 17
    .line 18
    const/16 v2, -0x100

    .line 19
    .line 20
    const-string v3, "YELLOW"

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/toughstump/atos/AtosColor;->YELLOW:Lcom/toughstump/atos/AtosColor;

    .line 27
    .line 28
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 29
    .line 30
    const-string v1, "Orange"

    .line 31
    .line 32
    const/16 v2, -0x5b00

    .line 33
    .line 34
    const-string v3, "ORANGE"

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/toughstump/atos/AtosColor;->ORANGE:Lcom/toughstump/atos/AtosColor;

    .line 41
    .line 42
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 43
    .line 44
    const-string v1, "Magenta"

    .line 45
    .line 46
    const v2, -0xff01

    .line 47
    .line 48
    .line 49
    const-string v3, "MAGENTA"

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/toughstump/atos/AtosColor;->MAGENTA:Lcom/toughstump/atos/AtosColor;

    .line 56
    .line 57
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 58
    .line 59
    const-string v1, "Red"

    .line 60
    .line 61
    const/high16 v2, -0x10000

    .line 62
    .line 63
    const-string v3, "RED"

    .line 64
    .line 65
    const/4 v4, 0x4

    .line 66
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/toughstump/atos/AtosColor;->RED:Lcom/toughstump/atos/AtosColor;

    .line 70
    .line 71
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 72
    .line 73
    const-string v1, "Maroon"

    .line 74
    .line 75
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 76
    .line 77
    const-string v3, "MAROON"

    .line 78
    .line 79
    const/4 v4, 0x5

    .line 80
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/toughstump/atos/AtosColor;->MAROON:Lcom/toughstump/atos/AtosColor;

    .line 84
    .line 85
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 86
    .line 87
    const-string v1, "Purple"

    .line 88
    .line 89
    const v2, -0x7fff80

    .line 90
    .line 91
    .line 92
    const-string v3, "PURPLE"

    .line 93
    .line 94
    const/4 v4, 0x6

    .line 95
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lcom/toughstump/atos/AtosColor;->PURPLE:Lcom/toughstump/atos/AtosColor;

    .line 99
    .line 100
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 101
    .line 102
    const-string v1, "Blue"

    .line 103
    .line 104
    const v2, -0xffff01

    .line 105
    .line 106
    .line 107
    const-string v3, "BLUE"

    .line 108
    .line 109
    const/4 v4, 0x7

    .line 110
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lcom/toughstump/atos/AtosColor;->BLUE:Lcom/toughstump/atos/AtosColor;

    .line 114
    .line 115
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 116
    .line 117
    const-string v1, "Cyan"

    .line 118
    .line 119
    const v2, -0xff0001

    .line 120
    .line 121
    .line 122
    const-string v3, "CYAN"

    .line 123
    .line 124
    const/16 v4, 0x8

    .line 125
    .line 126
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    sput-object v0, Lcom/toughstump/atos/AtosColor;->CYAN:Lcom/toughstump/atos/AtosColor;

    .line 130
    .line 131
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 132
    .line 133
    const-string v1, "Teal"

    .line 134
    .line 135
    const v2, -0xff4d4e

    .line 136
    .line 137
    .line 138
    const-string v3, "TEAL"

    .line 139
    .line 140
    const/16 v4, 0x9

    .line 141
    .line 142
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    sput-object v0, Lcom/toughstump/atos/AtosColor;->TEAL:Lcom/toughstump/atos/AtosColor;

    .line 146
    .line 147
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 148
    .line 149
    const-string v1, "Green"

    .line 150
    .line 151
    const v2, -0xff0100

    .line 152
    .line 153
    .line 154
    const-string v3, "GREEN"

    .line 155
    .line 156
    const/16 v4, 0xa

    .line 157
    .line 158
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    sput-object v0, Lcom/toughstump/atos/AtosColor;->GREEN:Lcom/toughstump/atos/AtosColor;

    .line 162
    .line 163
    new-instance v0, Lcom/toughstump/atos/AtosColor;

    .line 164
    .line 165
    const-string v1, "Dark Green"

    .line 166
    .line 167
    const v2, -0xffb400

    .line 168
    .line 169
    .line 170
    const-string v3, "DARK_GREEN"

    .line 171
    .line 172
    const/16 v4, 0xb

    .line 173
    .line 174
    invoke-direct {v0, v3, v4, v1, v2}, Lcom/toughstump/atos/AtosColor;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    sput-object v0, Lcom/toughstump/atos/AtosColor;->DARK_GREEN:Lcom/toughstump/atos/AtosColor;

    .line 178
    .line 179
    invoke-static {}, Lcom/toughstump/atos/AtosColor;->$values()[Lcom/toughstump/atos/AtosColor;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    sput-object v0, Lcom/toughstump/atos/AtosColor;->$VALUES:[Lcom/toughstump/atos/AtosColor;

    .line 184
    .line 185
    new-instance v0, Lcom/toughstump/atos/AtosColor$Companion;

    .line 186
    .line 187
    const/4 v1, 0x0

    .line 188
    invoke-direct {v0, v1}, Lcom/toughstump/atos/AtosColor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 189
    .line 190
    .line 191
    sput-object v0, Lcom/toughstump/atos/AtosColor;->Companion:Lcom/toughstump/atos/AtosColor$Companion;

    .line 192
    .line 193
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/toughstump/atos/AtosColor;->friendlyName:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lcom/toughstump/atos/AtosColor;->rgba:I

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/AtosColor;
    .locals 1

    const-class v0, Lcom/toughstump/atos/AtosColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/AtosColor;

    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/AtosColor;
    .locals 1

    sget-object v0, Lcom/toughstump/atos/AtosColor;->$VALUES:[Lcom/toughstump/atos/AtosColor;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toughstump/atos/AtosColor;

    return-object v0
.end method


# virtual methods
.method public final getFriendlyName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/AtosColor;->friendlyName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRgba()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/AtosColor;->rgba:I

    .line 2
    .line 3
    return v0
.end method
