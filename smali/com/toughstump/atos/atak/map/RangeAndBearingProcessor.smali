.class public final Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/atakmap/android/maps/ak$e;


# static fields
.field private static final ATOS_RAB_PREFIX:Ljava/lang/String; = "atos-rab-"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RAB_MAP_GROUP:Ljava/lang/String; = "Range & Bearing"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RangeAndBearingProcessor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mapGroup:Lcom/atakmap/android/maps/ak;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static rabUidsRemovedByThisRecently:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static snapEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->INSTANCE:Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->rabUidsRemovedByThisRecently:Ljava/util/Set;

    .line 14
    .line 15
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

.method public static final synthetic access$onTagDeletedFromProvider(Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->onTagDeletedFromProvider(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onTagStateUpdatedFromProvider(Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->onTagStateUpdatedFromProvider(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setSnapEnabled$p(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->snapEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method private final addRangeBearing(Lcom/toughstump/atos/state/AtosTag;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "adding RAB for tag "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "RangeAndBearingProcessor"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v5}, Lcom/atakmap/android/maps/MapView;->getSelfMarker()Lcom/atakmap/android/maps/ar;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "Self Marker N/A"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/atakmap/android/atos/utilities/RunnableManager;->toast(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v3}, Lcom/atakmap/android/maps/ar;->getPoint()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLatitude()D

    .line 52
    .line 53
    .line 54
    move-result-wide v6

    .line 55
    const-wide/16 v8, 0x0

    .line 56
    .line 57
    cmpg-double v0, v6, v8

    .line 58
    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/atakmap/android/maps/ar;->getPoint()Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->getLongitude()D

    .line 66
    .line 67
    .line 68
    move-result-wide v6

    .line 69
    cmpg-double v0, v6, v8

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    const-string v0, "self marker likely no gps for RAB"

    .line 74
    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_1
    sget-object v0, Lcom/toughstump/atos/atak/map/MapItemTailor;->INSTANCE:Lcom/toughstump/atos/atak/map/MapItemTailor;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Lcom/toughstump/atos/atak/map/MapItemTailor;->getMarker(Ljava/lang/String;)Lcom/atakmap/android/maps/ar;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    if-nez v4, :cond_2

    .line 89
    .line 90
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v0, "Tag Marker N/A"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/atakmap/android/atos/utilities/RunnableManager;->toast(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_2
    sget-object v0, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->mapGroup:Lcom/atakmap/android/maps/ak;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->getRangeAndBearingUid(Lcom/toughstump/atos/state/AtosTag;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Lcom/atakmap/android/maps/ak;->b(Ljava/lang/String;)Lcom/atakmap/android/maps/am;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_0

    .line 113
    :cond_3
    const/4 v0, 0x0

    .line 114
    :goto_0
    if-eqz v0, :cond_5

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v6, "RAB for tag "

    .line 122
    .line 123
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v6, " already exists"

    .line 134
    .line 135
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    instance-of v0, v0, Lcom/atakmap/android/toolbars/k;

    .line 146
    .line 147
    if-nez v0, :cond_4

    .line 148
    .line 149
    const-string v0, "RAB uid exists, but is not RAB line"

    .line 150
    .line 151
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->getRangeAndBearingUid(Lcom/toughstump/atos/state/AtosTag;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-direct {p0, v0}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->removeRangeAndBearing(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    return-void

    .line 163
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getCallsign()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, " R&B"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    new-instance v1, Lcom/atakmap/android/toolbars/k;

    .line 185
    .line 186
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->getRangeAndBearingUid(Lcom/toughstump/atos/state/AtosTag;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    const/4 v8, 0x1

    .line 191
    move-object v2, v1

    .line 192
    move-object v6, v0

    .line 193
    invoke-direct/range {v2 .. v8}, Lcom/atakmap/android/toolbars/k;-><init>(Lcom/atakmap/android/maps/ay;Lcom/atakmap/android/maps/ay;Lcom/atakmap/android/maps/MapView;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    .line 195
    .line 196
    const/4 v2, 0x1

    .line 197
    invoke-virtual {v1, v2}, Lcom/atakmap/android/toolbars/k;->setClickable(Z)V

    .line 198
    .line 199
    .line 200
    const-string v3, "menu"

    .line 201
    .line 202
    const-string v4, "menus/rab_menu.xml"

    .line 203
    .line 204
    invoke-virtual {v1, v3, v4}, Lcom/atakmap/android/toolbars/k;->setMetaString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v3, "rabUUID"

    .line 208
    .line 209
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->getRangeAndBearingUid(Lcom/toughstump/atos/state/AtosTag;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {v1, v3, p1}, Lcom/atakmap/android/toolbars/k;->setMetaString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v0}, Lcom/atakmap/android/toolbars/k;->setTitle(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string p1, "removable"

    .line 220
    .line 221
    invoke-virtual {v1, p1, v2}, Lcom/atakmap/android/toolbars/k;->setMetaBoolean(Ljava/lang/String;Z)V

    .line 222
    .line 223
    .line 224
    sget-object p1, Lcom/atakmap/coremap/conversions/Angle;->DEGREE:Lcom/atakmap/coremap/conversions/Angle;

    .line 225
    .line 226
    invoke-virtual {v1, p1}, Lcom/atakmap/android/toolbars/k;->a(Lcom/atakmap/coremap/conversions/Angle;)V

    .line 227
    .line 228
    .line 229
    sget-object p1, Lcom/atakmap/coremap/maps/coords/NorthReference;->MAGNETIC:Lcom/atakmap/coremap/maps/coords/NorthReference;

    .line 230
    .line 231
    invoke-virtual {v1, p1}, Lcom/atakmap/android/toolbars/k;->a(Lcom/atakmap/coremap/maps/coords/NorthReference;)V

    .line 232
    .line 233
    .line 234
    sget-object p1, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->mapGroup:Lcom/atakmap/android/maps/ak;

    .line 235
    .line 236
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v1}, Lcom/atakmap/android/maps/ak;->d(Lcom/atakmap/android/maps/am;)V

    .line 240
    .line 241
    .line 242
    sget-boolean p1, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->snapEnabled:Z

    .line 243
    .line 244
    if-eqz p1, :cond_6

    .line 245
    .line 246
    invoke-direct {p0, v1}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->zoomTo(Lcom/atakmap/android/toolbars/k;)V

    .line 247
    .line 248
    .line 249
    :cond_6
    return-void
.end method

.method private final atosTagUidFromRangeAndBearingUid(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "atos-rab-"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v3

    .line 13
    :cond_0
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private final getRangeAndBearingUid(Lcom/toughstump/atos/state/AtosTag;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "atos-rab-"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private final onTagDeletedFromProvider(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onTagDeleted attempting to remove atos RAB for "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "RangeAndBearingProcessor"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p2}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->getRangeAndBearingUid(Lcom/toughstump/atos/state/AtosTag;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->removeRangeAndBearing(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final onTagStateUpdatedFromProvider(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Tag state updated "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, ", RAB? "

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getRangeAndBearingEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v0, "RangeAndBearingProcessor"

    .line 35
    .line 36
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getRangeAndBearingEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-direct {p0, p2}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->addRangeBearing(Lcom/toughstump/atos/state/AtosTag;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0, p2}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->getRangeAndBearingUid(Lcom/toughstump/atos/state/AtosTag;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->removeRangeAndBearing(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method private final removeRangeAndBearing(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "RangeAndBearingProcessor"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->mapGroup:Lcom/atakmap/android/maps/ak;

    .line 4
    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/atakmap/android/maps/ak;->b(Ljava/lang/String;)Lcom/atakmap/android/maps/am;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Map Item "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " does not exist in map group"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object v2, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->rabUidsRemovedByThisRecently:Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "removing RAB item "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v1, v2}, Lcom/atakmap/android/maps/am;->setVisible(Z)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->mapGroup:Lcom/atakmap/android/maps/ak;

    .line 72
    .line 73
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v1}, Lcom/atakmap/android/maps/ak;->g(Lcom/atakmap/android/maps/am;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v2, "Failed to remove range and bearing item: "

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method

.method private final zoomTo(Lcom/atakmap/android/toolbars/k;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/atakmap/android/toolbars/k;->getPoints()[Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v0, p1, v1, v2}, Lcom/atakmap/android/util/b;->a(Lcom/atakmap/android/maps/MapView;[Lcom/atakmap/coremap/maps/coords/GeoPoint;II)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public onItemAdded(Lcom/atakmap/android/maps/am;Lcom/atakmap/android/maps/ak;)V
    .locals 0
    .param p1    # Lcom/atakmap/android/maps/am;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/atakmap/android/maps/ak;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onItemRemoved(Lcom/atakmap/android/maps/am;Lcom/atakmap/android/maps/ak;)V
    .locals 8
    .param p1    # Lcom/atakmap/android/maps/am;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/atakmap/android/maps/ak;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "mapItem"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/atakmap/android/maps/am;->getTitle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " was removed"

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const-string v0, "RangeAndBearingProcessor"

    .line 28
    .line 29
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    sget-object p2, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->rabUidsRemovedByThisRecently:Ljava/util/Set;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/atakmap/android/maps/am;->getUID()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    sget-object p2, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->rabUidsRemovedByThisRecently:Ljava/util/Set;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/atakmap/android/maps/am;->getUID()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    const-string p1, "We removed this one ourselves, no need to do anything"

    .line 54
    .line 55
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/atakmap/android/maps/am;->getUID()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "getUID(...)"

    .line 64
    .line 65
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->atosTagUidFromRangeAndBearingUid(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    sget-object p2, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosStateProvider;->getTrackMap()Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/toughstump/atos/state/AtosTag;

    .line 86
    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagState()Lcom/toughstump/atos/state/model/AtosTagState;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/16 v5, 0xb

    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v1, 0x0

    .line 97
    const/4 v2, 0x0

    .line 98
    const/4 v3, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-static/range {v0 .. v6}, Lcom/toughstump/atos/state/model/AtosTagState;->copy$default(Lcom/toughstump/atos/state/model/AtosTagState;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/toughstump/atos/state/model/AtosTagState;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p2, v0}, Lcom/toughstump/atos/state/AtosStateProvider;->updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagState()Lcom/toughstump/atos/state/model/AtosTagState;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/16 v6, 0xb

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v2, 0x0

    .line 115
    const/4 v5, 0x0

    .line 116
    invoke-static/range {v1 .. v7}, Lcom/toughstump/atos/state/model/AtosTagState;->copy$default(Lcom/toughstump/atos/state/model/AtosTagState;Ljava/lang/String;ZZZILjava/lang/Object;)Lcom/toughstump/atos/state/model/AtosTagState;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p2, p1}, Lcom/toughstump/atos/state/AtosStateProvider;->updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    return-void
.end method

.method public final start()V
    .locals 4

    .line 1
    const-string v0, "starting"

    .line 2
    .line 3
    const-string v1, "RangeAndBearingProcessor"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getMapView()Lcom/atakmap/android/maps/MapView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/atakmap/android/maps/MapView;->getRootGroup()Lcom/atakmap/android/maps/bb;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "Range & Bearing"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/atakmap/android/maps/bb;->c(Ljava/lang/String;)Lcom/atakmap/android/maps/ak;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->mapGroup:Lcom/atakmap/android/maps/ak;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string v0, "Could not scrape null map group"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/atakmap/android/maps/ak;->a(Lcom/atakmap/android/maps/ak$e;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagStateUpdateEvent()Lcom/toughstump/event/Event;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$start$1;

    .line 44
    .line 45
    invoke-direct {v2, p0}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$start$1;-><init>(Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagDeletedEvent()Lcom/toughstump/event/Event;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$start$2;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$start$2;-><init>(Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Ljava/util/Timer;

    .line 64
    .line 65
    const-string v1, "onRABStartup"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$start$$inlined$schedule$1;

    .line 71
    .line 72
    invoke-direct {v1}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$start$$inlined$schedule$1;-><init>()V

    .line 73
    .line 74
    .line 75
    const-wide/16 v2, 0x2710

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    const-string v0, "RangeAndBearingProcessor"

    .line 2
    .line 3
    const-string v1, "stopping"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagStateUpdateEvent()Lcom/toughstump/event/Event;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$stop$1;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$stop$1;-><init>(Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagDeletedEvent()Lcom/toughstump/event/Event;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$stop$2;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$stop$2;-><init>(Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
