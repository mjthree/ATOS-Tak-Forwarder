.class public final Lcom/toughstump/atos/atak/map/MapItemTailor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapItemTailor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapItemTailor.kt\ncom/toughstump/atos/atak/map/MapItemTailor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n1863#2,2:120\n*S KotlinDebug\n*F\n+ 1 MapItemTailor.kt\ncom/toughstump/atos/atak/map/MapItemTailor\n*L\n105#1:120,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMapItemTailor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapItemTailor.kt\ncom/toughstump/atos/atak/map/MapItemTailor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n1863#2,2:120\n*S KotlinDebug\n*F\n+ 1 MapItemTailor.kt\ncom/toughstump/atos/atak/map/MapItemTailor\n*L\n105#1:120,2\n*E\n"
    }
.end annotation


# static fields
.field private static final ATOS_ICON_META_KEY:Ljava/lang/String; = "atos_icon_key"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/toughstump/atos/atak/map/MapItemTailor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosMapItemTailor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final iconColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/atakmap/coremap/maps/assets/Icon;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final markerMutableMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/atakmap/android/maps/ar;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/atak/map/MapItemTailor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/atak/map/MapItemTailor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/atak/map/MapItemTailor;->INSTANCE:Lcom/toughstump/atos/atak/map/MapItemTailor;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/toughstump/atos/atak/map/MapItemTailor;->markerMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/toughstump/atos/atak/map/MapItemTailor;->iconColorMap:Ljava/util/Map;

    .line 21
    .line 22
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

.method public static final synthetic access$onTagDeleted(Lcom/toughstump/atos/atak/map/MapItemTailor;Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/atak/map/MapItemTailor;->onTagDeleted(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onTagUpdated(Lcom/toughstump/atos/atak/map/MapItemTailor;Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/atak/map/MapItemTailor;->onTagUpdated(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final createNewIcon(Lcom/toughstump/atos/AtosTrackType;IZ)Lcom/atakmap/coremap/maps/assets/Icon;
    .locals 2

    .line 1
    new-instance v0, Lcom/atakmap/coremap/maps/assets/Icon$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/atakmap/coremap/maps/assets/Icon$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getMarkerIconId(Lcom/toughstump/atos/AtosTrackType;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getMarkerNoGpsId(Lcom/toughstump/atos/AtosTrackType;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "android.resource://"

    .line 23
    .line 24
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/toughstump/atos/atak/map/MapItemTailor;->pluginContext:Landroid/content/Context;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_1
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x2f

    .line 41
    .line 42
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 p3, 0x0

    .line 53
    invoke-virtual {v0, p3, p1}, Lcom/atakmap/coremap/maps/assets/Icon$Builder;->setImageUri(ILjava/lang/String;)Lcom/atakmap/coremap/maps/assets/Icon$Builder;

    .line 54
    .line 55
    .line 56
    const/16 p1, 0x10

    .line 57
    .line 58
    invoke-virtual {v0, p1, p1}, Lcom/atakmap/coremap/maps/assets/Icon$Builder;->setAnchor(II)Lcom/atakmap/coremap/maps/assets/Icon$Builder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p3, p2}, Lcom/atakmap/coremap/maps/assets/Icon$Builder;->setColor(II)Lcom/atakmap/coremap/maps/assets/Icon$Builder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/assets/Icon$Builder;->build()Lcom/atakmap/coremap/maps/assets/Icon;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "build(...)"

    .line 69
    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-object p1
.end method

.method private final onTagDeleted(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "attempting to remove atos marker for "

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
    const-string v0, "AtosMapItemTailor"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/atak/map/MapItemTailor;->getMarker(Ljava/lang/String;)Lcom/atakmap/android/maps/ar;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/atakmap/android/maps/ar;->getGroup()Lcom/atakmap/android/maps/ak;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lcom/atakmap/android/maps/ak;->g(Lcom/atakmap/android/maps/am;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "removed atos marker for "

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p2, ".uid"

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private final onTagUpdated(Ljava/lang/Object;Lcom/toughstump/atos/state/AtosTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/toughstump/atos/atak/map/MapItemTailor;->updateIcon(Lcom/toughstump/atos/state/AtosTag;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final updateIcon(Lcom/toughstump/atos/state/AtosTag;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/toughstump/atos/atak/map/MapItemTailor;->markerMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/atakmap/android/maps/ar;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const-string v1, "this isn\'t the marker you\'re looking for"

    .line 20
    .line 21
    const-string v3, "AtosMapItemTailor"

    .line 22
    .line 23
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "atos-plugin-"

    .line 32
    .line 33
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/atakmap/android/maps/ar;

    .line 52
    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    const-string p1, "legacy check failed"

    .line 56
    .line 57
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->isVisible()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-virtual {v1, p1, v2}, Lcom/atakmap/android/maps/ar;->setVisible(ZZ)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->getColorInt(Lcom/toughstump/atos/AtosColor;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->isStale()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    const v2, -0x777778

    .line 88
    .line 89
    .line 90
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/toughstump/atos/AtosTrackType;->getAbbrev()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const/16 v4, 0x5f

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getCoordinateValid()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v4, ""

    .line 125
    .line 126
    const-string v5, "atos_icon_key"

    .line 127
    .line 128
    invoke-virtual {v1, v5, v4}, Lcom/atakmap/android/maps/ar;->getMetaString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-eqz v4, :cond_2

    .line 137
    .line 138
    return-void

    .line 139
    :cond_2
    sget-object v4, Lcom/toughstump/atos/atak/map/MapItemTailor;->iconColorMap:Ljava/util/Map;

    .line 140
    .line 141
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    check-cast v6, Lcom/atakmap/coremap/maps/assets/Icon;

    .line 146
    .line 147
    if-nez v6, :cond_3

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getCoordinateValid()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-direct {p0, p1, v2, v0}, Lcom/toughstump/atos/atak/map/MapItemTailor;->createNewIcon(Lcom/toughstump/atos/AtosTrackType;IZ)Lcom/atakmap/coremap/maps/assets/Icon;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    :cond_3
    const-string p1, "adapt_marker_icon"

    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    invoke-virtual {v1, p1, v0}, Lcom/atakmap/android/maps/ar;->setMetaBoolean(Ljava/lang/String;Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v6}, Lcom/atakmap/android/maps/ar;->setIcon(Lcom/atakmap/coremap/maps/assets/Icon;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Lcom/atakmap/android/maps/ar;->setColor(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v5, v3}, Lcom/atakmap/android/maps/ar;->setMetaString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method


# virtual methods
.method public final addMarker(Lcom/atakmap/android/maps/ar;)V
    .locals 2
    .param p1    # Lcom/atakmap/android/maps/ar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "marker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/atak/map/MapItemTailor;->markerMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/atakmap/android/maps/ar;->getUID()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final getMarker(Ljava/lang/String;)Lcom/atakmap/android/maps/ar;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/atak/map/MapItemTailor;->markerMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/atakmap/android/maps/ar;

    .line 13
    .line 14
    return-object p1
.end method

.method public final removeAll()V
    .locals 3

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/map/MapItemTailor;->markerMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-values>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/atakmap/android/maps/ar;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/atakmap/android/maps/ar;->getGroup()Lcom/atakmap/android/maps/ak;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2, v1}, Lcom/atakmap/android/maps/ak;->g(Lcom/atakmap/android/maps/am;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lcom/toughstump/atos/atak/map/MapItemTailor;->markerMutableMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pluginContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/atak/map/MapItemTailor;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    sget-object p1, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagTrackUpdateEvent()Lcom/toughstump/event/Event;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/toughstump/atos/atak/map/MapItemTailor$start$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/toughstump/atos/atak/map/MapItemTailor$start$1;-><init>(Lcom/toughstump/atos/atak/map/MapItemTailor;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagStateUpdateEvent()Lcom/toughstump/event/Event;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lcom/toughstump/atos/atak/map/MapItemTailor$start$2;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/toughstump/atos/atak/map/MapItemTailor$start$2;-><init>(Lcom/toughstump/atos/atak/map/MapItemTailor;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagDeletedEvent()Lcom/toughstump/event/Event;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lcom/toughstump/atos/atak/map/MapItemTailor$start$3;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/toughstump/atos/atak/map/MapItemTailor$start$3;-><init>(Lcom/toughstump/atos/atak/map/MapItemTailor;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagTrackUpdateEvent()Lcom/toughstump/event/Event;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/toughstump/atos/atak/map/MapItemTailor$stop$1;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/toughstump/atos/atak/map/MapItemTailor$stop$1;-><init>(Lcom/toughstump/atos/atak/map/MapItemTailor;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagStateUpdateEvent()Lcom/toughstump/event/Event;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lcom/toughstump/atos/atak/map/MapItemTailor$stop$2;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/toughstump/atos/atak/map/MapItemTailor$stop$2;-><init>(Lcom/toughstump/atos/atak/map/MapItemTailor;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTagDeletedEvent()Lcom/toughstump/event/Event;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/toughstump/atos/atak/map/MapItemTailor$stop$3;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/toughstump/atos/atak/map/MapItemTailor$stop$3;-><init>(Lcom/toughstump/atos/atak/map/MapItemTailor;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
