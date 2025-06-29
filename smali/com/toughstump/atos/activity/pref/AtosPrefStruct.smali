.class public final Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_BLUETOOTH_ENABLED:Z = false

.field public static final DEFAULT_CURRENT_MANIFEST_ONLY_ENABLED:Z = false

.field public static final DEFAULT_DROPDOWN_OPEN:Z = false

.field public static final DEFAULT_GOTENNA_DISTANCE_THRESHOLD:I = 0x3e8

.field public static final DEFAULT_GOTENNA_ENABLED:Z = false

.field public static final DEFAULT_GOTENNA_REFRESH_RATE:I = 0x3c

.field public static final DEFAULT_HIDE_STALE:Z = false

.field public static final DEFAULT_LEGACY_TRACK_HISTORY_UID:Z = false

.field public static final MAX_GOTENNA_DISTANCE_THRESHOLD:I = 0x7d0

.field public static final MAX_GOTENNA_REFRESH_RATE:I = 0x12c

.field public static final MIN_GOTENNA_DISTANCE_THRESHOLD:I = 0x3e8

.field public static final MIN_GOTENNA_REFRESH_RATE:I = 0x1e


# instance fields
.field private final bluetoothEnabled:Z

.field private final dropDownOpen:Z

.field private final goTennaDistanceThreshold:I

.field private final goTennaEnabled:Z

.field private final goTennaRefreshRate:I

.field private final hideStale:Z

.field private final legacyTrackHistoryUid:Z

.field private final onlyCurrentManifestVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->Companion:Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;-><init>(ZZZZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZIIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->bluetoothEnabled:Z

    .line 4
    iput-boolean p2, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->hideStale:Z

    .line 5
    iput-boolean p3, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->legacyTrackHistoryUid:Z

    .line 6
    iput-boolean p4, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaEnabled:Z

    .line 7
    iput-boolean p5, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->onlyCurrentManifestVisible:Z

    .line 8
    iput p6, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaRefreshRate:I

    .line 9
    iput p7, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaDistanceThreshold:I

    .line 10
    iput-boolean p8, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->dropDownOpen:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/16 v7, 0x3c

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/16 v8, 0x3e8

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v2, p8

    :goto_7
    move-object p1, p0

    move p2, v1

    move p3, v3

    move p4, v4

    move p5, v5

    move p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v2

    .line 11
    invoke-direct/range {p1 .. p9}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;-><init>(ZZZZZIIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;ZZZZZIIZILjava/lang/Object;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
    .locals 9

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->bluetoothEnabled:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->hideStale:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->legacyTrackHistoryUid:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaEnabled:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->onlyCurrentManifestVisible:Z

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaRefreshRate:I

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaDistanceThreshold:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->dropDownOpen:Z

    goto :goto_7

    :cond_7
    move/from16 v1, p8

    :goto_7
    move p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move p6, v7

    move/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->copy(ZZZZZIIZ)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->bluetoothEnabled:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->hideStale:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->legacyTrackHistoryUid:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaEnabled:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->onlyCurrentManifestVisible:Z

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaRefreshRate:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaDistanceThreshold:I

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->dropDownOpen:Z

    return v0
.end method

.method public final copy(ZZZZZIIZ)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v9, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;-><init>(ZZZZZIIZ)V

    return-object v9
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
    instance-of v1, p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->bluetoothEnabled:Z

    iget-boolean v3, p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->bluetoothEnabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->hideStale:Z

    iget-boolean v3, p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->hideStale:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->legacyTrackHistoryUid:Z

    iget-boolean v3, p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->legacyTrackHistoryUid:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaEnabled:Z

    iget-boolean v3, p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaEnabled:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->onlyCurrentManifestVisible:Z

    iget-boolean v3, p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->onlyCurrentManifestVisible:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaRefreshRate:I

    iget v3, p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaRefreshRate:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaDistanceThreshold:I

    iget v3, p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaDistanceThreshold:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->dropDownOpen:Z

    iget-boolean p1, p1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->dropDownOpen:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getBluetoothEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->bluetoothEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDropDownOpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->dropDownOpen:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getGoTennaDistanceThreshold()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaDistanceThreshold:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGoTennaEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getGoTennaRefreshRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaRefreshRate:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHideStale()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->hideStale:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLegacyTrackHistoryUid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->legacyTrackHistoryUid:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOnlyCurrentManifestVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->onlyCurrentManifestVisible:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->bluetoothEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->hideStale:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->legacyTrackHistoryUid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->onlyCurrentManifestVisible:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaRefreshRate:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaDistanceThreshold:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->dropDownOpen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "toJson(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AtosPrefStruct(bluetoothEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->bluetoothEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hideStale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->hideStale:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", legacyTrackHistoryUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->legacyTrackHistoryUid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", goTennaEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", onlyCurrentManifestVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->onlyCurrentManifestVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", goTennaRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", goTennaDistanceThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->goTennaDistanceThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dropDownOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->dropDownOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
