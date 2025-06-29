.class public final Lcom/toughstump/atos/kot/AtosKotEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/kot/AtosKotEvent$Companion;
    }
.end annotation


# static fields
.field private static final AlarmActive:Ljava/lang/String; = "alarm"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Archive:Ljava/lang/String; = "archive"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Attributes:Ljava/lang/String; = "attributes"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Color:Ljava/lang/String; = "color"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CommandLink:Ljava/lang/String; = "commandlink"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/toughstump/atos/kot/AtosKotEvent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DetailAtos:Ljava/lang/String; = "__atos"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INVALID_GPS:D = 9999999.0

.field public static final Legacy:Ljava/lang/String; = "legacy"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Manifest:Ljava/lang/String; = "manifest"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TagType:Ljava/lang/String; = "tag_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Temperature:Ljava/lang/String; = "temp_c"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final UidMod:Ljava/lang/String; = "atos-"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Voltage:Ljava/lang/String; = "voltage"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final alarmEnabled:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final batteryVoltage:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final callsign:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final color:Lcom/toughstump/atos/AtosColor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final commandLinkId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final link:Lkot/utils/model/Link;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final manifestName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final manifestUid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final point:Lkot/KotPoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stale:Lkot/KotTime;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tagId:I

.field private final tempDegC:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final time:Lkot/KotTime;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final track:Lkot/utils/model/Track;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final trackSource:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final trackType:Lcom/toughstump/atos/AtosTrackType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/kot/AtosKotEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/kot/AtosKotEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/kot/AtosKotEvent;->Companion:Lcom/toughstump/atos/kot/AtosKotEvent$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/toughstump/atos/AtosColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/toughstump/atos/AtosTrackType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lkot/utils/model/Track;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkot/utils/model/Link;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/AtosColor;",
            "Lcom/toughstump/atos/AtosTrackType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkot/KotTime;",
            "Lkot/KotTime;",
            "Lkot/KotPoint;",
            "Lkot/utils/model/Track;",
            "Lkot/utils/model/Link;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    const-string v10, "manifestUid"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "manifestName"

    invoke-static {p2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "callsign"

    invoke-static {p4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "color"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "trackType"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "attributes"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "time"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "stale"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "point"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestUid:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestName:Ljava/lang/String;

    move v1, p3

    .line 4
    iput v1, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->tagId:I

    .line 5
    iput-object v3, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->callsign:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->color:Lcom/toughstump/atos/AtosColor;

    .line 7
    iput-object v5, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackType:Lcom/toughstump/atos/AtosTrackType;

    .line 8
    iput-object v6, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->attributes:Ljava/util/Map;

    .line 9
    iput-object v7, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->time:Lkot/KotTime;

    .line 10
    iput-object v8, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->stale:Lkot/KotTime;

    .line 11
    iput-object v9, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    move-object/from16 v1, p11

    .line 12
    iput-object v1, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->track:Lkot/utils/model/Track;

    move-object/from16 v1, p12

    .line 13
    iput-object v1, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->link:Lkot/utils/model/Link;

    move-object/from16 v1, p13

    .line 14
    iput-object v1, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->alarmEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->commandLinkId:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackSource:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->tempDegC:Ljava/lang/Integer;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->batteryVoltage:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 19
    const-string v1, "legacy"

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit16 v1, v0, 0x400

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object/from16 v13, p11

    :goto_1
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_2

    move-object v14, v2

    goto :goto_2

    :cond_2
    move-object/from16 v14, p12

    :goto_2
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_3

    move-object v15, v2

    goto :goto_3

    :cond_3
    move-object/from16 v15, p13

    :goto_3
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_4

    move-object/from16 v16, v2

    goto :goto_4

    :cond_4
    move-object/from16 v16, p14

    :goto_4
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_5

    move-object/from16 v17, v2

    goto :goto_5

    :cond_5
    move-object/from16 v17, p15

    :goto_5
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move-object/from16 v18, v2

    goto :goto_6

    :cond_6
    move-object/from16 v18, p16

    :goto_6
    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    move-object/from16 v19, v2

    goto :goto_7

    :cond_7
    move-object/from16 v19, p17

    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    .line 20
    invoke-direct/range {v2 .. v19}, Lcom/toughstump/atos/kot/AtosKotEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/kot/AtosKotEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;ILjava/lang/Object;)Lcom/toughstump/atos/kot/AtosKotEvent;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestUid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->tagId:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->callsign:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->color:Lcom/toughstump/atos/AtosColor;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackType:Lcom/toughstump/atos/AtosTrackType;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->attributes:Ljava/util/Map;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->time:Lkot/KotTime;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->stale:Lkot/KotTime;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->track:Lkot/utils/model/Track;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->link:Lkot/utils/model/Link;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->alarmEnabled:Ljava/lang/Boolean;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->commandLinkId:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackSource:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->tempDegC:Ljava/lang/Integer;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v1, v1, v16

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/toughstump/atos/kot/AtosKotEvent;->batteryVoltage:Ljava/lang/Double;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p16, v15

    move-object/from16 p17, v1

    invoke-virtual/range {p0 .. p17}, Lcom/toughstump/atos/kot/AtosKotEvent;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;)Lcom/toughstump/atos/kot/AtosKotEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestUid:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lkot/KotPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    return-object v0
.end method

.method public final component11()Lkot/utils/model/Track;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->track:Lkot/utils/model/Track;

    return-object v0
.end method

.method public final component12()Lkot/utils/model/Link;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->link:Lkot/utils/model/Link;

    return-object v0
.end method

.method public final component13()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->alarmEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->commandLinkId:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackSource:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tempDegC:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component17()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->batteryVoltage:Ljava/lang/Double;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tagId:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->callsign:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/toughstump/atos/AtosColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->color:Lcom/toughstump/atos/AtosColor;

    return-object v0
.end method

.method public final component6()Lcom/toughstump/atos/AtosTrackType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackType:Lcom/toughstump/atos/AtosTrackType;

    return-object v0
.end method

.method public final component7()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public final component8()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->time:Lkot/KotTime;

    return-object v0
.end method

.method public final component9()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->stale:Lkot/KotTime;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;)Lcom/toughstump/atos/kot/AtosKotEvent;
    .locals 20
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/toughstump/atos/AtosColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/toughstump/atos/AtosTrackType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lkot/KotPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lkot/utils/model/Track;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkot/utils/model/Link;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/AtosColor;",
            "Lcom/toughstump/atos/AtosTrackType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkot/KotTime;",
            "Lkot/KotTime;",
            "Lkot/KotPoint;",
            "Lkot/utils/model/Track;",
            "Lkot/utils/model/Link;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ")",
            "Lcom/toughstump/atos/kot/AtosKotEvent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    const-string v0, "manifestUid"

    move-object/from16 v18, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestName"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callsign"

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "color"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackType"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "time"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stale"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lcom/toughstump/atos/kot/AtosKotEvent;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct/range {v0 .. v17}, Lcom/toughstump/atos/kot/AtosKotEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/toughstump/atos/AtosColor;Lcom/toughstump/atos/AtosTrackType;Ljava/util/Map;Lkot/KotTime;Lkot/KotTime;Lkot/KotPoint;Lkot/utils/model/Track;Lkot/utils/model/Link;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;)V

    return-object v19
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/toughstump/atos/kot/AtosKotEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/kot/AtosKotEvent;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestUid:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestUid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestName:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tagId:I

    iget v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->tagId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->callsign:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->callsign:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->color:Lcom/toughstump/atos/AtosColor;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->color:Lcom/toughstump/atos/AtosColor;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackType:Lcom/toughstump/atos/AtosTrackType;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->trackType:Lcom/toughstump/atos/AtosTrackType;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->attributes:Ljava/util/Map;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->attributes:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->time:Lkot/KotTime;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->time:Lkot/KotTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->stale:Lkot/KotTime;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->stale:Lkot/KotTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->track:Lkot/utils/model/Track;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->track:Lkot/utils/model/Track;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->link:Lkot/utils/model/Link;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->link:Lkot/utils/model/Link;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->alarmEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->alarmEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->commandLinkId:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->commandLinkId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackSource:Ljava/lang/String;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->trackSource:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tempDegC:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->tempDegC:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->batteryVoltage:Ljava/lang/Double;

    iget-object p1, p1, Lcom/toughstump/atos/kot/AtosKotEvent;->batteryVoltage:Ljava/lang/Double;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final getAlarmEnabled()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->alarmEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->attributes:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBatteryVoltage()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->batteryVoltage:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallsign()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->callsign:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getColor()Lcom/toughstump/atos/AtosColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->color:Lcom/toughstump/atos/AtosColor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCommandLinkId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->commandLinkId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoordinateValid()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/kot/AtosKotEvent;->isLegacy()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    const-wide v3, 0x416312cfe0000000L    # 9999999.0

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    .line 15
    .line 16
    invoke-virtual {v0}, Lkot/KotPoint;->getAltitude()D

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    cmpg-double v0, v5, v3

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move v1, v2

    .line 25
    :cond_0
    xor-int/lit8 v0, v1, 0x1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    .line 29
    .line 30
    invoke-virtual {v0}, Lkot/KotPoint;->getCircularError()D

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    cmpg-double v0, v5, v3

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    .line 40
    .line 41
    invoke-virtual {v0}, Lkot/KotPoint;->getCircularError()D

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    .line 52
    .line 53
    invoke-virtual {v0}, Lkot/KotPoint;->getLinearError()D

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    cmpg-double v0, v5, v3

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    .line 63
    .line 64
    invoke-virtual {v0}, Lkot/KotPoint;->getLinearError()D

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    move v1, v2

    .line 75
    :cond_4
    :goto_0
    return v1
.end method

.method public final getLink()Lkot/utils/model/Link;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->link:Lkot/utils/model/Link;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifestName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifestUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestUid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPoint()Lkot/KotPoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStale()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->stale:Lkot/KotTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tagId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTempDegC()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tempDegC:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTime()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->time:Lkot/KotTime;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrack()Lkot/utils/model/Track;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->track:Lkot/utils/model/Track;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackSource()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackSource:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTrackType()Lcom/toughstump/atos/AtosTrackType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackType:Lcom/toughstump/atos/AtosTrackType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "atos-"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tagId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x2d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestUid:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestUid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tagId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->callsign:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->color:Lcom/toughstump/atos/AtosColor;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackType:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->attributes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->time:Lkot/KotTime;

    invoke-virtual {v1}, Lkot/KotTime;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->stale:Lkot/KotTime;

    invoke-virtual {v1}, Lkot/KotTime;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    invoke-virtual {v1}, Lkot/KotPoint;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->track:Lkot/utils/model/Track;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lkot/utils/model/Track;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->link:Lkot/utils/model/Link;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lkot/utils/model/Link;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->alarmEnabled:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->commandLinkId:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackSource:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tempDegC:Ljava/lang/Integer;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->batteryVoltage:Ljava/lang/Double;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public final isLegacy()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestName:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "legacy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final isStale()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->stale:Lkot/KotTime;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkot/KotTime;->getMilliseconds()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    new-instance v2, Lkot/KotTime;

    .line 8
    .line 9
    invoke-direct {v2}, Lkot/KotTime;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2}, Lkot/KotTime;->getMilliseconds()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-gez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtosKotEvent(manifestUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", manifestName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->manifestName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tagId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tagId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callsign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->callsign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->color:Lcom/toughstump/atos/AtosColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackType:Lcom/toughstump/atos/AtosTrackType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->attributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->time:Lkot/KotTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->stale:Lkot/KotTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", point="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->point:Lkot/KotPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", track="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->track:Lkot/utils/model/Track;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->link:Lkot/utils/model/Link;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alarmEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->alarmEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", commandLinkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->commandLinkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->trackSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tempDegC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->tempDegC:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", batteryVoltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/kot/AtosKotEvent;->batteryVoltage:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
