.class public final Lcom/toughstump/atos/TagDetailDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BOAT:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static BUNDLE:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static CUSTOM:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static EQUIPMENT:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static FIXED_WING:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FREQUENCY:Ljava/lang/String; = "Frequency"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static HOUND:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static MEDICAL:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static PAX:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final REMARK:Ljava/lang/String; = "Remark"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static ROTARY_WING:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SPECIAL_EQUIPMENT:Ljava/lang/String; = "Special Equipment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TEAM_FREQUENCY:Ljava/lang/String; = "Team Frequency"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static UAS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static VEHICLE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static WEAPON:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/toughstump/atos/TagDetailDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/TagDetailDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->INSTANCE:Lcom/toughstump/atos/TagDetailDefaults;

    .line 7
    .line 8
    const-string v11, "Contact Information"

    .line 9
    .line 10
    const-string v12, "Destroy Rigging"

    .line 11
    .line 12
    const-string v1, "Remark"

    .line 13
    .line 14
    const-string v2, "Frequency"

    .line 15
    .line 16
    const-string v3, "Special Equipment"

    .line 17
    .line 18
    const-string v4, "Chute Type"

    .line 19
    .line 20
    const-string v5, "Bundle Type"

    .line 21
    .line 22
    const-string v6, "Bundle Quantity"

    .line 23
    .line 24
    const-string v7, "Bundle POC"

    .line 25
    .line 26
    const-string v8, "Point of Impact"

    .line 27
    .line 28
    const-string v9, "Drop Time"

    .line 29
    .line 30
    const-string v10, "Drop Altitude"

    .line 31
    .line 32
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->BUNDLE:Ljava/util/List;

    .line 41
    .line 42
    const-string v0, "Handler Callsign"

    .line 43
    .line 44
    const-string v1, "Remark"

    .line 45
    .line 46
    const-string v2, "Frequency"

    .line 47
    .line 48
    const-string v3, "Special Equipment"

    .line 49
    .line 50
    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->HOUND:Ljava/util/List;

    .line 59
    .line 60
    const-string v0, "PAX Type"

    .line 61
    .line 62
    const-string v4, "Team Frequency"

    .line 63
    .line 64
    filled-new-array {v1, v2, v3, v0, v4}, [Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->PAX:Ljava/util/List;

    .line 73
    .line 74
    const-string v8, "Driver Callsign"

    .line 75
    .line 76
    const-string v9, "Team Frequency"

    .line 77
    .line 78
    const-string v4, "Remark"

    .line 79
    .line 80
    const-string v5, "Frequency"

    .line 81
    .line 82
    const-string v6, "Special Equipment"

    .line 83
    .line 84
    const-string v7, "Vehicle Type"

    .line 85
    .line 86
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->VEHICLE:Ljava/util/List;

    .line 95
    .line 96
    const-string v15, "ROZ Center Point"

    .line 97
    .line 98
    const-string v16, "ROZ Radius meters"

    .line 99
    .line 100
    const-string v4, "Remark"

    .line 101
    .line 102
    const-string v5, "Frequency"

    .line 103
    .line 104
    const-string v6, "Special Equipment"

    .line 105
    .line 106
    const-string v7, "UAS Type"

    .line 107
    .line 108
    const-string v8, "Pilot Callsign"

    .line 109
    .line 110
    const-string v9, "Pilot Frequency"

    .line 111
    .line 112
    const-string v10, "FMV Capable"

    .line 113
    .line 114
    const-string v11, "VDL Frequency"

    .line 115
    .line 116
    const-string v12, "VUL Time Start"

    .line 117
    .line 118
    const-string v13, "VUL Time End"

    .line 119
    .line 120
    const-string v14, "Max Altitude"

    .line 121
    .line 122
    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->UAS:Ljava/util/List;

    .line 131
    .line 132
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->BOAT:Ljava/util/List;

    .line 141
    .line 142
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->CUSTOM:Ljava/util/List;

    .line 151
    .line 152
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->EQUIPMENT:Ljava/util/List;

    .line 161
    .line 162
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->FIXED_WING:Ljava/util/List;

    .line 171
    .line 172
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->ROTARY_WING:Ljava/util/List;

    .line 181
    .line 182
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->MEDICAL:Ljava/util/List;

    .line 191
    .line 192
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    sput-object v0, Lcom/toughstump/atos/TagDetailDefaults;->WEAPON:Ljava/util/List;

    .line 201
    .line 202
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getBOAT()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->BOAT:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBUNDLE()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->BUNDLE:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCUSTOM()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->CUSTOM:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEQUIPMENT()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->EQUIPMENT:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFIXED_WING()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->FIXED_WING:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHOUND()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->HOUND:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMEDICAL()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->MEDICAL:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPAX()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->PAX:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getROTARY_WING()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->ROTARY_WING:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUAS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->UAS:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVEHICLE()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->VEHICLE:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWEAPON()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/TagDetailDefaults;->WEAPON:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setBOAT(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->BOAT:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setBUNDLE(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->BUNDLE:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setCUSTOM(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->CUSTOM:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setEQUIPMENT(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->EQUIPMENT:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setFIXED_WING(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->FIXED_WING:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setHOUND(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->HOUND:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setMEDICAL(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->MEDICAL:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setPAX(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->PAX:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setROTARY_WING(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->ROTARY_WING:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setUAS(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->UAS:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setVEHICLE(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->VEHICLE:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setWEAPON(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/TagDetailDefaults;->WEAPON:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method
