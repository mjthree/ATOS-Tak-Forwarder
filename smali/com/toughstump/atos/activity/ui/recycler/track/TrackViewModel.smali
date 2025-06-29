.class public final Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isExpanded:Z

.field private tag:Lcom/toughstump/atos/state/AtosTag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/toughstump/atos/state/AtosTag;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getAltitudeDisplay()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/pref/AtakPrefs;->INSTANCE:Lcom/atakmap/android/atos/pref/AtakPrefs;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getPoint()Lkot/KotPoint;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/pref/AtakPrefs;->formatAltitude(Lkot/KotPoint;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final getCallsign()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getCallsign()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getColor()Lcom/toughstump/atos/AtosColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getCoordinateDisplay()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/pref/AtakPrefs;->INSTANCE:Lcom/atakmap/android/atos/pref/AtakPrefs;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getPoint()Lkot/KotPoint;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/pref/AtakPrefs;->formatCoordinate(Lkot/KotPoint;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final getOwnshipHeadingDisplay()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/pref/AtakPrefs;->INSTANCE:Lcom/atakmap/android/atos/pref/AtakPrefs;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getOwnshipBearingDegTrue()Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/toughstump/atos/state/AtosTag;->getPoint()Lkot/KotPoint;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/atakmap/android/atos/pref/AtakPrefs;->formatHeading(Ljava/lang/Double;Lkot/KotPoint;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final getOwnshipRangeDisplay()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/pref/AtakPrefs;->INSTANCE:Lcom/atakmap/android/atos/pref/AtakPrefs;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getOwnshipRangeM()Ljava/lang/Double;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/pref/AtakPrefs;->formatRange(Ljava/lang/Double;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final getTag()Lcom/toughstump/atos/state/AtosTag;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagHeadingDisplay()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/pref/AtakPrefs;->INSTANCE:Lcom/atakmap/android/atos/pref/AtakPrefs;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTrack()Lkot/utils/model/Track;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lkot/utils/model/Track;->getCourse()D

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/toughstump/atos/state/AtosTag;->getPoint()Lkot/KotPoint;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/atakmap/android/atos/pref/AtakPrefs;->formatHeading(Ljava/lang/Double;Lkot/KotPoint;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public final getTagId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getTime()Lkot/KotTime;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->getTime()Lkot/KotTime;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getTrackType()Lcom/toughstump/atos/AtosTrackType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final isExpanded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->isExpanded:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isStale()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/toughstump/atos/kot/AtosKotEvent;->isStale()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final setExpanded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->isExpanded:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setTag(Lcom/toughstump/atos/state/AtosTag;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/recycler/track/TrackViewModel;->tag:Lcom/toughstump/atos/state/AtosTag;

    .line 7
    .line 8
    return-void
.end method
