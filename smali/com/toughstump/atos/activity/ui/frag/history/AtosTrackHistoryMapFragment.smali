.class public final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosTrackHistoryFrag"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private avgSpeed:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callsign:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private cancelLoad:Z

.field private closeButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private curTrack:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private distUnits:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private distance:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gain:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private graphButton:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hideOnClose:Z

.field private icon:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loader:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loaderTxt:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loaderWheel:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private loss:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mapView:Lcom/atakmap/android/maps/MapView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private maxAlt:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private maxSpeed:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private minAlt:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nextScreenGraph:Z

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private root:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scrollView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startDate:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startTime:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private timeAgo:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private totalTime:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private track:Lcom/atakmap/android/track/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trackColor:Landroid/widget/ImageButton;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trackHandler:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trackMapGroup:Lcom/atakmap/android/maps/ak;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final trackRecords:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private trackStyle:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trackTitle:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final uid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->Companion:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/atakmap/android/maps/MapView;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/atakmap/android/maps/MapView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            "Lcom/atakmap/android/maps/MapView;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/record/db/TrackRecord;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "pluginContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activityContext"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mapView"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "uid"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "trackRecords"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->pluginContext:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->activityContext:Landroid/content/Context;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->mapView:Lcom/atakmap/android/maps/MapView;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->uid:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackRecords:Ljava/util/Collection;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->hideOnClose:Z

    .line 41
    .line 42
    sget-object p1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;->INSTANCE:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;

    .line 43
    .line 44
    invoke-virtual {p1, p5}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;->getTrack(Ljava/util/Collection;)Lcom/atakmap/android/track/c;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackHandler:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;

    .line 51
    .line 52
    sget-object p1, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;->INSTANCE:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;

    .line 53
    .line 54
    if-eqz p4, :cond_0

    .line 55
    .line 56
    invoke-virtual {p4}, Lcom/atakmap/android/track/c;->m()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 p4, 0x0

    .line 62
    :goto_0
    invoke-virtual {p1, p4}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosHistoryMapProvider;->getMapGroup(Ljava/lang/String;)Lcom/atakmap/android/maps/ak;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackMapGroup:Lcom/atakmap/android/maps/ak;

    .line 67
    .line 68
    sput-object p3, Lcom/atakmap/android/maps/MapView;->b:Lcom/atakmap/android/maps/MapView;

    .line 69
    .line 70
    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->prefs:Landroid/content/SharedPreferences;

    .line 75
    .line 76
    return-void
.end method

.method public static final synthetic access$getActivityContext$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->activityContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPluginContext$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getPrefs$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->prefs:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTrack$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Lcom/atakmap/android/track/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTrackHandler$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackHandler:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$refresh(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->refresh()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showColorPicker(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->showColorPicker()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showDistanceUnitsPicker(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->showDistanceUnitsPicker()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showGraph(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->showGraph()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showStylePicker(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->showStylePicker()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final onComplete(Lcom/atakmap/android/track/c;)V
    .locals 3

    .line 1
    const-string v0, "AtosTrackHistoryFrag"

    .line 2
    .line 3
    const-string v1, "Track analysis complete"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 9
    .line 10
    if-eq v0, p1, :cond_1

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->removePolyline()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/atakmap/android/track/c;->p()Latak/core/sp;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/atakmap/android/util/b;->b(Lcom/atakmap/android/maps/am;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 27
    .line 28
    :cond_1
    if-nez p1, :cond_2

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->cancelLoad:Z

    .line 32
    .line 33
    :cond_2
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->refresh()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "details summary goes here"

    .line 41
    .line 42
    const-string v1, "track.details"

    .line 43
    .line 44
    const-string v2, "details"

    .line 45
    .line 46
    invoke-static {p1, v2, v0, v1}, Lcom/atakmap/android/gui/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final refresh()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_b

    .line 7
    .line 8
    sget-object v0, Lcom/atakmap/android/maps/MapView;->b:Lcom/atakmap/android/maps/MapView;

    .line 9
    .line 10
    if-eqz v0, :cond_b

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/atakmap/android/maps/MapView;->getRootGroup()Lcom/atakmap/android/maps/bb;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loader:Landroid/view/View;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->scrollView:Landroid/view/View;

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "Refreshing track: "

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 47
    .line 48
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/atakmap/android/track/c;->m()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v3, "AtosTrackHistoryFrag"

    .line 63
    .line 64
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 68
    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/atakmap/android/track/c;->n()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getDeviceUid()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-static {v0, v3}, Lcom/atakmap/coremap/filesystem/FileSystemUtils;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 85
    .line 86
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/atakmap/android/track/c;->a()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    .line 95
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->curTrack:Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->curTrack:Landroid/widget/TextView;

    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    const-string v1, "current active track"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->curTrack:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v3, "most recent track"

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 131
    .line 132
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/atakmap/android/track/c;->o()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->curTrack:Landroid/widget/TextView;

    .line 151
    .line 152
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->icon:Landroid/widget/ImageView;

    .line 159
    .line 160
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    sget-object v0, Lcom/atakmap/android/maps/MapView;->b:Lcom/atakmap/android/maps/MapView;

    .line 167
    .line 168
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->icon:Landroid/widget/ImageView;

    .line 169
    .line 170
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 171
    .line 172
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Lcom/atakmap/android/track/c;->n()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v0, v1, v3}, Lcom/atakmap/android/util/b;->a(Lcom/atakmap/android/maps/MapView;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->callsign:Landroid/widget/TextView;

    .line 183
    .line 184
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 188
    .line 189
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/atakmap/android/track/c;->o()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .line 198
    .line 199
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->showPolyline()V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackTitle:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v3, "Track History: "

    .line 213
    .line 214
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 218
    .line 219
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3}, Lcom/atakmap/android/track/c;->b()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackColor:Landroid/widget/ImageButton;

    .line 237
    .line 238
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 242
    .line 243
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/atakmap/android/track/c;->d()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 251
    .line 252
    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 256
    .line 257
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/atakmap/android/track/c;->h()J

    .line 261
    .line 262
    .line 263
    move-result-wide v0

    .line 264
    invoke-direct {p0, v0, v1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->setStartDateTime(J)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->totalTime:Landroid/widget/TextView;

    .line 268
    .line 269
    if-eqz v0, :cond_4

    .line 270
    .line 271
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 272
    .line 273
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Lcom/atakmap/android/track/c;->i()J

    .line 277
    .line 278
    .line 279
    move-result-wide v3

    .line 280
    invoke-static {v3, v4}, Latak/core/mq;->b(J)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    .line 286
    .line 287
    :cond_4
    new-instance v0, Lcom/atakmap/coremap/maps/time/CoordinatedTime;

    .line 288
    .line 289
    invoke-direct {v0}, Lcom/atakmap/coremap/maps/time/CoordinatedTime;-><init>()V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Lcom/atakmap/coremap/maps/time/CoordinatedTime;->getMilliseconds()J

    .line 293
    .line 294
    .line 295
    move-result-wide v0

    .line 296
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 297
    .line 298
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3}, Lcom/atakmap/android/track/c;->h()J

    .line 302
    .line 303
    .line 304
    move-result-wide v3

    .line 305
    sub-long v3, v0, v3

    .line 306
    .line 307
    iget-object v5, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->timeAgo:Landroid/widget/TextView;

    .line 308
    .line 309
    if-eqz v5, :cond_5

    .line 310
    .line 311
    invoke-static {v0, v1, v3, v4, v2}, Latak/core/mq;->a(JJZ)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    :cond_5
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackStyle:Landroid/widget/Button;

    .line 319
    .line 320
    const/4 v1, 0x1

    .line 321
    if-eqz v0, :cond_8

    .line 322
    .line 323
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 324
    .line 325
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v2}, Lcom/atakmap/android/track/c;->e()I

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-eqz v2, :cond_7

    .line 333
    .line 334
    if-eq v2, v1, :cond_6

    .line 335
    .line 336
    const-string v2, "Arrows"

    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_6
    const-string v2, "Dashed"

    .line 340
    .line 341
    goto :goto_1

    .line 342
    :cond_7
    const-string v2, "Solid"

    .line 343
    .line 344
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .line 346
    .line 347
    :cond_8
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->prefs:Landroid/content/SharedPreferences;

    .line 348
    .line 349
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    const-string v2, "rab_rng_units_pref"

    .line 353
    .line 354
    const-string v3, "1"

    .line 355
    .line 356
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-eqz v0, :cond_a

    .line 368
    .line 369
    if-eq v0, v1, :cond_9

    .line 370
    .line 371
    const-string v1, "NM"

    .line 372
    .line 373
    goto :goto_2

    .line 374
    :cond_9
    const-string v1, "M/KM"

    .line 375
    .line 376
    goto :goto_2

    .line 377
    :cond_a
    const-string v1, "Ft/Mi"

    .line 378
    .line 379
    :goto_2
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->distUnits:Landroid/widget/Button;

    .line 380
    .line 381
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    .line 386
    .line 387
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->distance:Landroid/widget/TextView;

    .line 388
    .line 389
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 393
    .line 394
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2, v0}, Lcom/atakmap/android/track/c;->a(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->gain:Landroid/widget/TextView;

    .line 405
    .line 406
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 410
    .line 411
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2}, Lcom/atakmap/android/track/c;->w()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    .line 420
    .line 421
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loss:Landroid/widget/TextView;

    .line 422
    .line 423
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 427
    .line 428
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v2}, Lcom/atakmap/android/track/c;->y()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->minAlt:Landroid/widget/TextView;

    .line 439
    .line 440
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 444
    .line 445
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2}, Lcom/atakmap/android/track/c;->A()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    .line 454
    .line 455
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->maxAlt:Landroid/widget/TextView;

    .line 456
    .line 457
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 458
    .line 459
    .line 460
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 461
    .line 462
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2}, Lcom/atakmap/android/track/c;->C()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v2

    .line 469
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    .line 471
    .line 472
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->maxSpeed:Landroid/widget/TextView;

    .line 473
    .line 474
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 478
    .line 479
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2, v0}, Lcom/atakmap/android/track/c;->b(I)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .line 488
    .line 489
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->avgSpeed:Landroid/widget/TextView;

    .line 490
    .line 491
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 495
    .line 496
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2, v0}, Lcom/atakmap/android/track/c;->c(I)Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->scrollView:Landroid/view/View;

    .line 508
    .line 509
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loader:Landroid/view/View;

    .line 516
    .line 517
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 521
    .line 522
    .line 523
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->icon:Landroid/widget/ImageView;

    .line 524
    .line 525
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    .line 530
    .line 531
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->cancelLoad:Z

    .line 532
    .line 533
    if-eqz v0, :cond_d

    .line 534
    .line 535
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loaderWheel:Landroid/view/View;

    .line 536
    .line 537
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 541
    .line 542
    .line 543
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loaderTxt:Landroid/widget/TextView;

    .line 544
    .line 545
    if-eqz v0, :cond_c

    .line 546
    .line 547
    const-string v1, "no tracks, go home"

    .line 548
    .line 549
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    .line 551
    .line 552
    :cond_c
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->callsign:Landroid/widget/TextView;

    .line 553
    .line 554
    if-eqz v0, :cond_f

    .line 555
    .line 556
    const-string v1, "none"

    .line 557
    .line 558
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    .line 560
    .line 561
    goto :goto_4

    .line 562
    :cond_d
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loaderWheel:Landroid/view/View;

    .line 563
    .line 564
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 568
    .line 569
    .line 570
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loaderTxt:Landroid/widget/TextView;

    .line 571
    .line 572
    if-eqz v0, :cond_e

    .line 573
    .line 574
    const-string v1, "processing user track"

    .line 575
    .line 576
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    .line 578
    .line 579
    :cond_e
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->callsign:Landroid/widget/TextView;

    .line 580
    .line 581
    if-eqz v0, :cond_f

    .line 582
    .line 583
    const-string v1, "loading"

    .line 584
    .line 585
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    .line 587
    .line 588
    :cond_f
    :goto_4
    return-void
.end method

.method private final removePolyline()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/atakmap/android/track/c;->q()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final setStartDateTime(J)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    const-string p2, "yyyy-MM-dd"

    .line 9
    .line 10
    invoke-static {}, Lcom/atakmap/coremap/locale/LocaleUtil;->getCurrent()Ljava/util/Locale;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p1, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    .line 16
    .line 17
    const-string p2, "UTC"

    .line 18
    .line 19
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p1, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->startDate:Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 38
    .line 39
    const-string v1, "HH:mm:ss\'Z\'"

    .line 40
    .line 41
    invoke-static {}, Lcom/atakmap/coremap/locale/LocaleUtil;->getCurrent()Ljava/util/Locale;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {p1, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->startTime:Landroid/widget/TextView;

    .line 56
    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method private final showColorPicker()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->activityContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/atakmap/app/m$o;->select_track_color:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/atakmap/android/gui/ColorPalette;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->activityContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Lcom/atakmap/android/gui/ColorPalette;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/atakmap/android/track/c;->d()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v2, 0x0

    .line 34
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/atakmap/android/gui/ColorPalette;->setColor(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;

    .line 52
    .line 53
    invoke-direct {v2, p0, v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;Landroid/app/AlertDialog;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/atakmap/android/gui/ColorPalette;->setOnColorSelectedListener(Lcom/atakmap/android/gui/ColorPalette$a;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private final showDistanceUnitsPicker()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->activityContext:Landroid/content/Context;

    .line 4
    .line 5
    const v2, 0x1090012

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    const-string v1, "Ft/Mi"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "M/KM"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "NM"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->prefs:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "rab_rng_units_pref"

    .line 32
    .line 33
    const-string v3, "1"

    .line 34
    .line 35
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    const/4 v1, 0x1

    .line 48
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->activityContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    sget v3, Lcom/atakmap/app/m$o;->select_distance_units:I

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 58
    .line 59
    .line 60
    sget v3, Lcom/atakmap/app/m$o;->cancel:I

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    .line 65
    .line 66
    new-instance v3, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showDistanceUnitsPicker$1;

    .line 67
    .line 68
    invoke-direct {v3, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showDistanceUnitsPicker$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private final showGraph()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/atakmap/android/track/c;->r()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "Not Enough Points"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/utilities/RunnableManager;->toast(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/atakmap/android/track/c;->p()Latak/core/sp;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Latak/core/sp;->getPoints()[Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/atakmap/coremap/maps/coords/GeoPoint;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/atakmap/coremap/maps/coords/GeoPoint;->isAltitudeValid()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->activityContext:Landroid/content/Context;

    .line 61
    .line 62
    sget v1, Lcom/atakmap/app/m$o;->track_no_elevation:I

    .line 63
    .line 64
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    .line 70
    .line 71
    :goto_0
    new-instance v0, Lcom/atakmap/android/track/a;

    .line 72
    .line 73
    sget-object v1, Lcom/atakmap/android/maps/MapView;->b:Lcom/atakmap/android/maps/MapView;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 76
    .line 77
    invoke-direct {v0, v1, v3}, Lcom/atakmap/android/track/a;-><init>(Lcom/atakmap/android/maps/MapView;Lcom/atakmap/android/track/c;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/atakmap/android/routes/elevation/RouteElevationBroadcastReceiver;->a()Lcom/atakmap/android/routes/elevation/RouteElevationBroadcastReceiver;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Lcom/atakmap/android/routes/elevation/RouteElevationBroadcastReceiver;->a(Lcom/atakmap/android/routes/f;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/atakmap/android/routes/elevation/RouteElevationBroadcastReceiver;->a()Lcom/atakmap/android/routes/elevation/RouteElevationBroadcastReceiver;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0}, Lcom/atakmap/android/routes/f;->getTitle()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Lcom/atakmap/android/routes/elevation/RouteElevationBroadcastReceiver;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-boolean v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->nextScreenGraph:Z

    .line 99
    .line 100
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/atakmap/android/track/c;->m()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/4 v0, 0x0

    .line 110
    :goto_1
    invoke-static {v0}, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->getTrackHistoryIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {}, Lcom/atakmap/android/routes/elevation/RouteElevationBroadcastReceiver;->a()Lcom/atakmap/android/routes/elevation/RouteElevationBroadcastReceiver;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1, v0}, Lcom/atakmap/android/routes/elevation/RouteElevationBroadcastReceiver;->a(Landroid/content/Intent;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private final showPolyline()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackMapGroup:Lcom/atakmap/android/maps/ak;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/atakmap/android/maps/MapView;->getDeviceUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/atakmap/android/maps/ak;->b(Ljava/lang/String;)Lcom/atakmap/android/maps/am;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/atakmap/android/track/c;->p()Latak/core/sp;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eq v0, v1, :cond_3

    .line 31
    .line 32
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/atakmap/android/maps/am;->removeFromGroup()Z

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->prefs:Landroid/content/SharedPreferences;

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "track_crumb_size"

    .line 43
    .line 44
    const-string v2, "10"

    .line 45
    .line 46
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 58
    .line 59
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackMapGroup:Lcom/atakmap/android/maps/ak;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/atakmap/android/track/c;->a(Lcom/atakmap/android/maps/ak;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/atakmap/android/track/c;->p()Latak/core/sp;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Latak/core/sp;->a(I)V

    .line 77
    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/atakmap/android/track/c;->p()Latak/core/sp;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 93
    .line 94
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/atakmap/android/track/c;->p()Latak/core/sp;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "detailsOpen"

    .line 102
    .line 103
    const/4 v2, 0x1

    .line 104
    invoke-virtual {v0, v1, v2}, Latak/core/sp;->setMetaBoolean(Ljava/lang/String;Z)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-void
.end method

.method private final showStylePicker()V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->activityContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/atakmap/app/m$o;->select_track_style:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 11
    .line 12
    .line 13
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->activityContext:Landroid/content/Context;

    .line 16
    .line 17
    const v3, 0x1090012

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/atakmap/android/track/c$a;->a:Lcom/atakmap/android/track/c$a;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/atakmap/android/track/c$a;->c:Lcom/atakmap/android/track/c$a;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lcom/atakmap/android/track/c$a;->b:Lcom/atakmap/android/track/c$a;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 51
    .line 52
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/atakmap/android/track/c;->f()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    sget v3, Lcom/atakmap/app/m$o;->cancel:I

    .line 64
    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    .line 68
    .line 69
    new-instance v3, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;

    .line 70
    .line 71
    invoke-direct {v3, p0, v1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;Landroid/widget/ArrayAdapter;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final hideTrackHistory()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->removePolyline()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_frag_track_history_map:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->nextScreenGraph:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->removePolyline()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/atakmap/android/track/c;->j()Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getStartPoint(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/atakmap/android/atos/calc/CoordinateCalculatorKt;->toKotPoint(Lcom/atakmap/coremap/maps/coords/GeoPointMetaData;)Lkot/KotPoint;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/toughstump/atos/atak/map/AtakMapInteractions;->INSTANCE:Lcom/toughstump/atos/atak/map/AtakMapInteractions;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v1, v0, v3, v2, v3}, Lcom/toughstump/atos/atak/map/IAtakMapInteractions$DefaultImpls;->panMap$default(Lcom/toughstump/atos/atak/map/IAtakMapInteractions;Lkot/KotPoint;Ljava/lang/Double;ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->refresh()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->nextScreenGraph:Z

    .line 37
    .line 38
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_icon:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/ImageView;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, p2

    .line 24
    :goto_0
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->icon:Landroid/widget/ImageView;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_callsign:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/TextView;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object p1, p2

    .line 40
    :goto_1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->callsign:Landroid/widget/TextView;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_currentTrack:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/TextView;

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object p1, p2

    .line 56
    :goto_2
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->curTrack:Landroid/widget/TextView;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_title:I

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/TextView;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    move-object p1, p2

    .line 72
    :goto_3
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackTitle:Landroid/widget/TextView;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_colorBtn:I

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/widget/ImageButton;

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    move-object p1, p2

    .line 88
    :goto_4
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackColor:Landroid/widget/ImageButton;

    .line 89
    .line 90
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$1;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_styleBtn:I

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroid/widget/Button;

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_5
    move-object p1, p2

    .line 115
    :goto_5
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackStyle:Landroid/widget/Button;

    .line 116
    .line 117
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$2;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_distUnitsBtn:I

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/Button;

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_6
    move-object p1, p2

    .line 142
    :goto_6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->distUnits:Landroid/widget/Button;

    .line 143
    .line 144
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$3;

    .line 148
    .line 149
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 156
    .line 157
    if-eqz p1, :cond_7

    .line 158
    .line 159
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_startDate:I

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/widget/TextView;

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_7
    move-object p1, p2

    .line 169
    :goto_7
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->startDate:Landroid/widget/TextView;

    .line 170
    .line 171
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 172
    .line 173
    if-eqz p1, :cond_8

    .line 174
    .line 175
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_startTime:I

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Landroid/widget/TextView;

    .line 182
    .line 183
    goto :goto_8

    .line 184
    :cond_8
    move-object p1, p2

    .line 185
    :goto_8
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->startTime:Landroid/widget/TextView;

    .line 186
    .line 187
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 188
    .line 189
    if-eqz p1, :cond_9

    .line 190
    .line 191
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_timeAgo:I

    .line 192
    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Landroid/widget/TextView;

    .line 198
    .line 199
    goto :goto_9

    .line 200
    :cond_9
    move-object p1, p2

    .line 201
    :goto_9
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->timeAgo:Landroid/widget/TextView;

    .line 202
    .line 203
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 204
    .line 205
    if-eqz p1, :cond_a

    .line 206
    .line 207
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_distance:I

    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    check-cast p1, Landroid/widget/TextView;

    .line 214
    .line 215
    goto :goto_a

    .line 216
    :cond_a
    move-object p1, p2

    .line 217
    :goto_a
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->distance:Landroid/widget/TextView;

    .line 218
    .line 219
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 220
    .line 221
    if-eqz p1, :cond_b

    .line 222
    .line 223
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_elapsedtime:I

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Landroid/widget/TextView;

    .line 230
    .line 231
    goto :goto_b

    .line 232
    :cond_b
    move-object p1, p2

    .line 233
    :goto_b
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->totalTime:Landroid/widget/TextView;

    .line 234
    .line 235
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 236
    .line 237
    if-eqz p1, :cond_c

    .line 238
    .line 239
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_minAlt:I

    .line 240
    .line 241
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    check-cast p1, Landroid/widget/TextView;

    .line 246
    .line 247
    goto :goto_c

    .line 248
    :cond_c
    move-object p1, p2

    .line 249
    :goto_c
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->minAlt:Landroid/widget/TextView;

    .line 250
    .line 251
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 252
    .line 253
    if-eqz p1, :cond_d

    .line 254
    .line 255
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_maxAlt:I

    .line 256
    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Landroid/widget/TextView;

    .line 262
    .line 263
    goto :goto_d

    .line 264
    :cond_d
    move-object p1, p2

    .line 265
    :goto_d
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->maxAlt:Landroid/widget/TextView;

    .line 266
    .line 267
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 268
    .line 269
    if-eqz p1, :cond_e

    .line 270
    .line 271
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_maxSpeed:I

    .line 272
    .line 273
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Landroid/widget/TextView;

    .line 278
    .line 279
    goto :goto_e

    .line 280
    :cond_e
    move-object p1, p2

    .line 281
    :goto_e
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->maxSpeed:Landroid/widget/TextView;

    .line 282
    .line 283
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 284
    .line 285
    if-eqz p1, :cond_f

    .line 286
    .line 287
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_avgSpeed:I

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Landroid/widget/TextView;

    .line 294
    .line 295
    goto :goto_f

    .line 296
    :cond_f
    move-object p1, p2

    .line 297
    :goto_f
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->avgSpeed:Landroid/widget/TextView;

    .line 298
    .line 299
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 300
    .line 301
    if-eqz p1, :cond_10

    .line 302
    .line 303
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_gain:I

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    check-cast p1, Landroid/widget/TextView;

    .line 310
    .line 311
    goto :goto_10

    .line 312
    :cond_10
    move-object p1, p2

    .line 313
    :goto_10
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->gain:Landroid/widget/TextView;

    .line 314
    .line 315
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 316
    .line 317
    if-eqz p1, :cond_11

    .line 318
    .line 319
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_loss:I

    .line 320
    .line 321
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    check-cast p1, Landroid/widget/TextView;

    .line 326
    .line 327
    goto :goto_11

    .line 328
    :cond_11
    move-object p1, p2

    .line 329
    :goto_11
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loss:Landroid/widget/TextView;

    .line 330
    .line 331
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 332
    .line 333
    if-eqz p1, :cond_12

    .line 334
    .line 335
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_loader:I

    .line 336
    .line 337
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    goto :goto_12

    .line 342
    :cond_12
    move-object p1, p2

    .line 343
    :goto_12
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loader:Landroid/view/View;

    .line 344
    .line 345
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 346
    .line 347
    if-eqz p1, :cond_13

    .line 348
    .line 349
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_loader_wheel:I

    .line 350
    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    goto :goto_13

    .line 356
    :cond_13
    move-object p1, p2

    .line 357
    :goto_13
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loaderWheel:Landroid/view/View;

    .line 358
    .line 359
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 360
    .line 361
    if-eqz p1, :cond_14

    .line 362
    .line 363
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_loader_txt:I

    .line 364
    .line 365
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    check-cast p1, Landroid/widget/TextView;

    .line 370
    .line 371
    goto :goto_14

    .line 372
    :cond_14
    move-object p1, p2

    .line 373
    :goto_14
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->loaderTxt:Landroid/widget/TextView;

    .line 374
    .line 375
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 376
    .line 377
    if-eqz p1, :cond_15

    .line 378
    .line 379
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_scrollView:I

    .line 380
    .line 381
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    goto :goto_15

    .line 386
    :cond_15
    move-object p1, p2

    .line 387
    :goto_15
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->scrollView:Landroid/view/View;

    .line 388
    .line 389
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 390
    .line 391
    if-eqz p1, :cond_16

    .line 392
    .line 393
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->track_details_graph:I

    .line 394
    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    check-cast p1, Landroid/widget/ImageButton;

    .line 400
    .line 401
    goto :goto_16

    .line 402
    :cond_16
    move-object p1, p2

    .line 403
    :goto_16
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->graphButton:Landroid/widget/ImageButton;

    .line 404
    .line 405
    if-eqz p1, :cond_17

    .line 406
    .line 407
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$4;

    .line 408
    .line 409
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$4;-><init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    .line 414
    .line 415
    :cond_17
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->track:Lcom/atakmap/android/track/c;

    .line 416
    .line 417
    if-eqz p1, :cond_19

    .line 418
    .line 419
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->trackColor:Landroid/widget/ImageButton;

    .line 420
    .line 421
    if-eqz v0, :cond_18

    .line 422
    .line 423
    invoke-virtual {p1}, Lcom/atakmap/android/track/c;->d()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 428
    .line 429
    .line 430
    :cond_18
    invoke-direct {p0, p1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->onComplete(Lcom/atakmap/android/track/c;)V

    .line 431
    .line 432
    .line 433
    :cond_19
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->root:Landroid/view/View;

    .line 434
    .line 435
    if-eqz p1, :cond_1a

    .line 436
    .line 437
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->track_details_close:I

    .line 438
    .line 439
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    move-object p2, p1

    .line 444
    check-cast p2, Landroid/widget/ImageButton;

    .line 445
    .line 446
    :cond_1a
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->closeButton:Landroid/widget/ImageButton;

    .line 447
    .line 448
    if-eqz p2, :cond_1b

    .line 449
    .line 450
    sget-object p1, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$6;->INSTANCE:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$6;

    .line 451
    .line 452
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    .line 454
    .line 455
    :cond_1b
    return-void
.end method
