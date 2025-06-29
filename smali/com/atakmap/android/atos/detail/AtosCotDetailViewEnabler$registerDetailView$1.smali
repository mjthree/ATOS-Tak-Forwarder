.class public final Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler$registerDetailView$1;
.super Lcom/atakmap/android/cotdetails/ExtendedInfoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->registerDetailView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $detailView:Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler$registerDetailView$1;->$detailView:Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/atakmap/android/cotdetails/ExtendedInfoView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setMarker(Lcom/atakmap/android/maps/ay;)V
    .locals 7

    .line 1
    const-string v0, "pointMapItem"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "__atos"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/atakmap/android/maps/ay;->hasMetaValue(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/16 p1, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler$registerDetailView$1;->$detailView:Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->setManifestTag(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget-object v0, Lcom/toughstump/atos/state/AtosStateProvider;->INSTANCE:Lcom/toughstump/atos/state/AtosStateProvider;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosStateProvider;->getTrackMap()Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/atakmap/android/maps/ay;->getUID()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/toughstump/atos/state/AtosTag;

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance v6, Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getCallsign()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTrackType()Lcom/toughstump/atos/AtosTrackType;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getAtosKotEvent()Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/toughstump/atos/kot/AtosKotEvent;->getAttributes()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    move-object v0, v6

    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/toughstump/atos/manifest/AtosManifestTag;-><init>(ILjava/lang/String;Lcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler$registerDetailView$1;->$detailView:Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;

    .line 76
    .line 77
    invoke-virtual {p1, v6}, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->setManifestTag(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
