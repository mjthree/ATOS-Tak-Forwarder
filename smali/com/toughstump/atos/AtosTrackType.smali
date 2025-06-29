.class public final enum Lcom/toughstump/atos/AtosTrackType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/AtosTrackType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/toughstump/atos/AtosTrackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/toughstump/atos/AtosTrackType;

.field public static final enum BOAT:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Boat"
    .end annotation
.end field

.field public static final enum BUNDLE:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Bundle"
    .end annotation
.end field

.field public static final enum CUSTOM:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Custom"
    .end annotation
.end field

.field public static final Companion:Lcom/toughstump/atos/AtosTrackType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum EQUIPMENT:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Equipment"
    .end annotation
.end field

.field public static final enum FIXED_WING:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Fixed Wing"
    .end annotation
.end field

.field public static final enum K9:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "K9"
    .end annotation
.end field

.field public static final enum MEDICAL:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Medical"
    .end annotation
.end field

.field public static final enum PAX:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Personnel"
    .end annotation
.end field

.field public static final enum ROTARY_WING:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Rotary Wing"
    .end annotation
.end field

.field public static final enum UAS:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "UAS"
    .end annotation
.end field

.field public static final enum VEHICLE:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Vehicle"
    .end annotation
.end field

.field public static final enum WEAPON:Lcom/toughstump/atos/AtosTrackType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Weapon"
    .end annotation
.end field


# instance fields
.field private final abbrev:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cotType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/toughstump/atos/AtosTrackType;
    .locals 12

    sget-object v0, Lcom/toughstump/atos/AtosTrackType;->PAX:Lcom/toughstump/atos/AtosTrackType;

    sget-object v1, Lcom/toughstump/atos/AtosTrackType;->K9:Lcom/toughstump/atos/AtosTrackType;

    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->VEHICLE:Lcom/toughstump/atos/AtosTrackType;

    sget-object v3, Lcom/toughstump/atos/AtosTrackType;->EQUIPMENT:Lcom/toughstump/atos/AtosTrackType;

    sget-object v4, Lcom/toughstump/atos/AtosTrackType;->MEDICAL:Lcom/toughstump/atos/AtosTrackType;

    sget-object v5, Lcom/toughstump/atos/AtosTrackType;->WEAPON:Lcom/toughstump/atos/AtosTrackType;

    sget-object v6, Lcom/toughstump/atos/AtosTrackType;->CUSTOM:Lcom/toughstump/atos/AtosTrackType;

    sget-object v7, Lcom/toughstump/atos/AtosTrackType;->BUNDLE:Lcom/toughstump/atos/AtosTrackType;

    sget-object v8, Lcom/toughstump/atos/AtosTrackType;->BOAT:Lcom/toughstump/atos/AtosTrackType;

    sget-object v9, Lcom/toughstump/atos/AtosTrackType;->FIXED_WING:Lcom/toughstump/atos/AtosTrackType;

    sget-object v10, Lcom/toughstump/atos/AtosTrackType;->ROTARY_WING:Lcom/toughstump/atos/AtosTrackType;

    sget-object v11, Lcom/toughstump/atos/AtosTrackType;->UAS:Lcom/toughstump/atos/AtosTrackType;

    filled-new-array/range {v0 .. v11}, [Lcom/toughstump/atos/AtosTrackType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lcom/toughstump/atos/AtosTrackType;

    .line 2
    .line 3
    const-string v4, "PAX"

    .line 4
    .line 5
    const-string v5, "a-f-G-U-C-I"

    .line 6
    .line 7
    const-string v1, "PAX"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "Personnel"

    .line 11
    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Lcom/toughstump/atos/AtosTrackType;->PAX:Lcom/toughstump/atos/AtosTrackType;

    .line 17
    .line 18
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 19
    .line 20
    const-string v11, "K9"

    .line 21
    .line 22
    const-string v12, "a-f-G-U-C-R-k"

    .line 23
    .line 24
    const-string v8, "K9"

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    const-string v10, "K9"

    .line 28
    .line 29
    move-object v7, v0

    .line 30
    invoke-direct/range {v7 .. v12}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->K9:Lcom/toughstump/atos/AtosTrackType;

    .line 34
    .line 35
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 36
    .line 37
    const-string v5, "VEH"

    .line 38
    .line 39
    const-string v6, "a-f-G-E-V"

    .line 40
    .line 41
    const-string v2, "VEHICLE"

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    const-string v4, "Vehicle"

    .line 45
    .line 46
    move-object v1, v0

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->VEHICLE:Lcom/toughstump/atos/AtosTrackType;

    .line 51
    .line 52
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 53
    .line 54
    const-string v11, "AC"

    .line 55
    .line 56
    const-string v12, "a-f-G-E"

    .line 57
    .line 58
    const-string v8, "EQUIPMENT"

    .line 59
    .line 60
    const/4 v9, 0x3

    .line 61
    const-string v10, "Equipment"

    .line 62
    .line 63
    move-object v7, v0

    .line 64
    invoke-direct/range {v7 .. v12}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->EQUIPMENT:Lcom/toughstump/atos/AtosTrackType;

    .line 68
    .line 69
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 70
    .line 71
    const-string v5, "MED"

    .line 72
    .line 73
    const-string v6, "a-f-G-U-S-M"

    .line 74
    .line 75
    const-string v2, "MEDICAL"

    .line 76
    .line 77
    const/4 v3, 0x4

    .line 78
    const-string v4, "Medical"

    .line 79
    .line 80
    move-object v1, v0

    .line 81
    invoke-direct/range {v1 .. v6}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->MEDICAL:Lcom/toughstump/atos/AtosTrackType;

    .line 85
    .line 86
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 87
    .line 88
    const-string v11, "BOOM"

    .line 89
    .line 90
    const-string v12, "a-f-G-E-W"

    .line 91
    .line 92
    const-string v8, "WEAPON"

    .line 93
    .line 94
    const/4 v9, 0x5

    .line 95
    const-string v10, "Weapon"

    .line 96
    .line 97
    move-object v7, v0

    .line 98
    invoke-direct/range {v7 .. v12}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->WEAPON:Lcom/toughstump/atos/AtosTrackType;

    .line 102
    .line 103
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 104
    .line 105
    const-string v5, "CUSTOM"

    .line 106
    .line 107
    const-string v6, "a-f-G-c"

    .line 108
    .line 109
    const-string v2, "CUSTOM"

    .line 110
    .line 111
    const/4 v3, 0x6

    .line 112
    const-string v4, "Custom"

    .line 113
    .line 114
    move-object v1, v0

    .line 115
    invoke-direct/range {v1 .. v6}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->CUSTOM:Lcom/toughstump/atos/AtosTrackType;

    .line 119
    .line 120
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 121
    .line 122
    const-string v11, "BUNDLE"

    .line 123
    .line 124
    const-string v12, "a-f-A-E-b"

    .line 125
    .line 126
    const-string v8, "BUNDLE"

    .line 127
    .line 128
    const/4 v9, 0x7

    .line 129
    const-string v10, "Bundle"

    .line 130
    .line 131
    move-object v7, v0

    .line 132
    invoke-direct/range {v7 .. v12}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->BUNDLE:Lcom/toughstump/atos/AtosTrackType;

    .line 136
    .line 137
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 138
    .line 139
    const-string v5, "Boat"

    .line 140
    .line 141
    const-string v6, "a-f-S"

    .line 142
    .line 143
    const-string v2, "BOAT"

    .line 144
    .line 145
    const/16 v3, 0x8

    .line 146
    .line 147
    const-string v4, "Boat"

    .line 148
    .line 149
    move-object v1, v0

    .line 150
    invoke-direct/range {v1 .. v6}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->BOAT:Lcom/toughstump/atos/AtosTrackType;

    .line 154
    .line 155
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 156
    .line 157
    const-string v11, "AC"

    .line 158
    .line 159
    const-string v12, "a-f-A-C-F"

    .line 160
    .line 161
    const-string v8, "FIXED_WING"

    .line 162
    .line 163
    const/16 v9, 0x9

    .line 164
    .line 165
    const-string v10, "Fixed Wing"

    .line 166
    .line 167
    move-object v7, v0

    .line 168
    invoke-direct/range {v7 .. v12}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->FIXED_WING:Lcom/toughstump/atos/AtosTrackType;

    .line 172
    .line 173
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 174
    .line 175
    const-string v5, "HELO"

    .line 176
    .line 177
    const-string v6, "a-f-A-C-H"

    .line 178
    .line 179
    const-string v2, "ROTARY_WING"

    .line 180
    .line 181
    const/16 v3, 0xa

    .line 182
    .line 183
    const-string v4, "Rotary Wing"

    .line 184
    .line 185
    move-object v1, v0

    .line 186
    invoke-direct/range {v1 .. v6}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->ROTARY_WING:Lcom/toughstump/atos/AtosTrackType;

    .line 190
    .line 191
    new-instance v0, Lcom/toughstump/atos/AtosTrackType;

    .line 192
    .line 193
    const-string v11, "UAS"

    .line 194
    .line 195
    const-string v12, "a-f-A-M-F-Q"

    .line 196
    .line 197
    const-string v8, "UAS"

    .line 198
    .line 199
    const/16 v9, 0xb

    .line 200
    .line 201
    const-string v10, "UAS"

    .line 202
    .line 203
    move-object v7, v0

    .line 204
    invoke-direct/range {v7 .. v12}, Lcom/toughstump/atos/AtosTrackType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->UAS:Lcom/toughstump/atos/AtosTrackType;

    .line 208
    .line 209
    invoke-static {}, Lcom/toughstump/atos/AtosTrackType;->$values()[Lcom/toughstump/atos/AtosTrackType;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->$VALUES:[Lcom/toughstump/atos/AtosTrackType;

    .line 214
    .line 215
    new-instance v0, Lcom/toughstump/atos/AtosTrackType$Companion;

    .line 216
    .line 217
    const/4 v1, 0x0

    .line 218
    invoke-direct {v0, v1}, Lcom/toughstump/atos/AtosTrackType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 219
    .line 220
    .line 221
    sput-object v0, Lcom/toughstump/atos/AtosTrackType;->Companion:Lcom/toughstump/atos/AtosTrackType$Companion;

    .line 222
    .line 223
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/toughstump/atos/AtosTrackType;->type:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/toughstump/atos/AtosTrackType;->abbrev:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/toughstump/atos/AtosTrackType;->cotType:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toughstump/atos/AtosTrackType;
    .locals 1

    const-class v0, Lcom/toughstump/atos/AtosTrackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/toughstump/atos/AtosTrackType;

    return-object p0
.end method

.method public static values()[Lcom/toughstump/atos/AtosTrackType;
    .locals 1

    sget-object v0, Lcom/toughstump/atos/AtosTrackType;->$VALUES:[Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toughstump/atos/AtosTrackType;

    return-object v0
.end method


# virtual methods
.method public final getAbbrev()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/AtosTrackType;->abbrev:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCotType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/AtosTrackType;->cotType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/AtosTrackType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
