.class public final Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$Companion;,
        Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosToolbarFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private batteryFrameLayout:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private batteryPercentage:I

.field private batteryStatusImage:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private batteryStatusText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bluetoothToggleImage:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private connectionState:Lcom/toughstump/atos/service/CommandLinkStatus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private connectionStatusImage:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private connectionStatusText:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private filterResetImage:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mode:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parent:Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private popupMenuImage:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private root:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagsListVisible:Z

.field private viewTagsImageView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->Companion:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;
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
    const-string v0, "activityContext"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "mode"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->activityContext:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->mode:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 31
    .line 32
    new-instance p1, Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    const/4 p3, 0x3

    .line 36
    invoke-direct {p1, p2, p2, p3, p2}, Lcom/toughstump/atos/service/CommandLinkStatus;-><init>(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionState:Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 40
    .line 41
    return-void
.end method

.method public static final synthetic access$onBatteryUpdated(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->onBatteryUpdated(Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onConnectionStatusUpdated(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;Ljava/lang/Object;Lcom/toughstump/atos/service/CommandLinkStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->onConnectionStatusUpdated(Ljava/lang/Object;Lcom/toughstump/atos/service/CommandLinkStatus;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$onFilterUpdated(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;Ljava/lang/Object;Lcom/toughstump/atos/filter/AtosFilterCriteria;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->onFilterUpdated(Ljava/lang/Object;Lcom/toughstump/atos/filter/AtosFilterCriteria;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$resetFilter(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->resetFilter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$showPopupMenu(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->showPopupMenu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$toggleBluetooth(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->toggleBluetooth()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$toggleTagListView(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->toggleTagListView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateBatteryState(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->updateBatteryState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateConnectionStatus(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->updateConnectionStatus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final onBatteryUpdated(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "On Battery Received "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "AtosToolbarFragment"

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iput p2, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryPercentage:I

    .line 24
    .line 25
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    new-instance p2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onBatteryUpdated$1;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onBatteryUpdated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private final onConnectionStatusUpdated(Ljava/lang/Object;Lcom/toughstump/atos/service/CommandLinkStatus;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "On CXN Updated "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/toughstump/atos/service/CommandLinkStatus;->getState()Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "AtosToolbarFragment"

    .line 23
    .line 24
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionState:Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/toughstump/atos/service/CommandLinkStatus;->getState()Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2}, Lcom/toughstump/atos/service/CommandLinkStatus;->getState()Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-ne p1, v1, :cond_0

    .line 38
    .line 39
    const-string p1, "no update"

    .line 40
    .line 41
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionState:Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    new-instance p2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onConnectionStatusUpdated$1;

    .line 52
    .line 53
    invoke-direct {p2, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onConnectionStatusUpdated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method private final onFilterUpdated(Ljava/lang/Object;Lcom/toughstump/atos/filter/AtosFilterCriteria;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lcom/toughstump/atos/filter/AtosFilterCriteria;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 p2, 0x1

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->filterResetImage:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->filterResetImage:Landroid/widget/ImageView;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/16 p2, 0x8

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private final resetFilter()V
    .locals 13

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v12, Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 8
    .line 9
    const/16 v10, 0xff

    .line 10
    .line 11
    const/4 v11, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x0

    .line 20
    move-object v1, v12

    .line 21
    invoke-direct/range {v1 .. v11}, Lcom/toughstump/atos/filter/AtosFilterCriteria;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v12}, Lcom/toughstump/atos/state/db/AtosStateRepository;->updateFilter(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final setBatteryDisconnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionStatusImage:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->light_red:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryFrameLayout:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method private final setBatteryOperational()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionStatusText:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionState:Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/toughstump/atos/service/CommandLinkStatus;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionStatusImage:Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->light_green:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryFrameLayout:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method private final setBluetoothToggleState()V
    .locals 3

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getBluetoothScanEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->bluetoothToggleImage:Landroid/widget/ImageView;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_bluetooth:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->bluetoothToggleImage:Landroid/widget/ImageView;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 27
    .line 28
    sget v2, Lcom/atakmap/android/atos/plugin/R$color;->blue:I

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->bluetoothToggleImage:Landroid/widget/ImageView;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_bluetooth_disable_foreground:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->bluetoothToggleImage:Landroid/widget/ImageView;

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 52
    .line 53
    sget v2, Lcom/atakmap/android/atos/plugin/R$color;->light_grey:I

    .line 54
    .line 55
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_0
    return-void
.end method

.method private final showAtosSettings()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Lcom/toughstump/atos/activity/pref/prefactivity/PreferencesActivity;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->activityContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final showClearMapItemsDialog()V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/ClearMapItemsDialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->activityContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/dialog/ClearMapItemsDialog;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/dialog/ClearMapItemsDialog;->show()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final showManifestManager()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;->showManifestFragment()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final showPopupMenu()V
    .locals 4

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->popupMenuImage:Landroid/widget/ImageView;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->mode:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final showTrackHistory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;->showTrackHistoryFragment()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final toggleBluetooth()V
    .locals 2

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getBluetoothScanEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->setBluetoothScanEnabled(Z)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->setBluetoothToggleState()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final toggleTagListView()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->tagsListVisible:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->tagsListVisible:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/IToolbarFragmentInterface;->toggleTagListView(Z)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->tagsListVisible:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget v0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_menu_close:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget v0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_menu_white:I

    .line 20
    .line 21
    :goto_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->viewTagsImageView:Landroid/widget/ImageView;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private final updateBatteryState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryFrameLayout:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryStatusText:Landroid/widget/TextView;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryPercentage:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryPercentage:I

    .line 23
    .line 24
    const/16 v1, 0x32

    .line 25
    .line 26
    if-le v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryStatusImage:Landroid/widget/ImageView;

    .line 29
    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 33
    .line 34
    sget v2, Lcom/atakmap/android/atos/plugin/R$color;->green:I

    .line 35
    .line 36
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    if-ge v0, v1, :cond_3

    .line 45
    .line 46
    const/16 v1, 0x19

    .line 47
    .line 48
    if-le v0, v1, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryStatusImage:Landroid/widget/ImageView;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 55
    .line 56
    sget v2, Lcom/atakmap/android/atos/plugin/R$color;->led_orange:I

    .line 57
    .line 58
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryStatusImage:Landroid/widget/ImageView;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 71
    .line 72
    sget v2, Lcom/atakmap/android/atos/plugin/R$color;->red:I

    .line 73
    .line 74
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    return-void
.end method

.method private final updateConnectionStatus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionStatusText:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionState:Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/toughstump/atos/service/CommandLinkStatus;->getState()Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionState:Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/toughstump/atos/service/CommandLinkStatus;->getState()Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    aget v0, v1, v0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    if-eq v0, v1, :cond_5

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    if-eq v0, v1, :cond_4

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    if-eq v0, v1, :cond_3

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    const/4 v1, 0x5

    .line 45
    if-eq v0, v1, :cond_1

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->setBatteryDisconnected()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionStatusImage:Landroid/widget/ImageView;

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->light_grey:I

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->setBatteryOperational()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionStatusImage:Landroid/widget/ImageView;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->light_green:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->setBatteryDisconnected()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->setBatteryDisconnected()V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->setBatteryDisconnected()V

    .line 83
    .line 84
    .line 85
    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_frag_toolbar:I

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-static {}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->values()[Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget-object p1, v0, p1

    .line 14
    .line 15
    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    aget p1, v0, p1

    .line 22
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 27
    .line 28
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :pswitch_0
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->showRegulatoryDialog()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_1
    sget-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->toggleCurrentManifest()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    sget-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->toggleCurrentManifest()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_3
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->showAtosSettings()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :pswitch_4
    sget-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->toggleStale()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :pswitch_5
    sget-object p1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->toggleStale()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_6
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->showClearMapItemsDialog()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :pswitch_7
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->showManifestManager()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :pswitch_8
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->showTrackHistory()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_9
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 93
    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onMenuItemClick$1;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onMenuItemClick$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 105
    return p1

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->INSTANCE:Lcom/toughstump/atos/service/CommandLinkStatusProvider;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->getBatteryUpdated()Lcom/toughstump/event/Event;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onPause$1;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onPause$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->getConnectionUpdated()Lcom/toughstump/event/Event;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onPause$2;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onPause$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/toughstump/atos/state/db/AtosStateRepository;->getFilterUpdated()Lcom/toughstump/event/Event;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onPause$3;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onPause$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/toughstump/event/Event;->minusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->INSTANCE:Lcom/toughstump/atos/service/CommandLinkStatusProvider;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->getBatteryUpdated()Lcom/toughstump/event/Event;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onResume$1;

    .line 11
    .line 12
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onResume$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->getConnectionUpdated()Lcom/toughstump/event/Event;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onResume$2;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onResume$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 28
    .line 29
    .line 30
    sget-object v1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/toughstump/atos/state/db/AtosStateRepository;->getFilterUpdated()Lcom/toughstump/event/Event;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onResume$3;

    .line 41
    .line 42
    invoke-direct {v3, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onResume$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/toughstump/event/Event;->plusAssign(Lcom/toughstump/event/EventHandler;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/toughstump/atos/state/db/AtosStateRepository;->getCurrentFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-direct {p0, p0, v1}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->onFilterUpdated(Ljava/lang/Object;Lcom/toughstump/atos/filter/AtosFilterCriteria;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->getStatus()Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->getStatus()Lcom/toughstump/atos/service/CommandLinkStatus;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-direct {p0, p0, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->onConnectionStatusUpdated(Ljava/lang/Object;Lcom/toughstump/atos/service/CommandLinkStatus;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/toughstump/atos/service/CommandLinkStatus;->getState()Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-object v2, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OPERATIONAL:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 75
    .line 76
    if-ne v1, v2, :cond_0

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->getBatteryPercentage()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-direct {p0, p0, v0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->onBatteryUpdated(Ljava/lang/Object;I)V

    .line 83
    .line 84
    .line 85
    :cond_0
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_atos_toolbar_bluetooth:I

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->bluetoothToggleImage:Landroid/widget/ImageView;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onViewCreated$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onViewCreated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->setBluetoothToggleState()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->frame_atos_toolbar_battery:I

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/widget/FrameLayout;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object p1, p2

    .line 53
    :goto_1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryFrameLayout:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_atos_toolbar_battery:I

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/widget/ImageView;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move-object p1, p2

    .line 69
    :goto_2
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryStatusImage:Landroid/widget/ImageView;

    .line 70
    .line 71
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_toolbar_battery:I

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroid/widget/TextView;

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move-object p1, p2

    .line 85
    :goto_3
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->batteryStatusText:Landroid/widget/TextView;

    .line 86
    .line 87
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 88
    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->txt_atos_toolbar_connection_status:I

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Landroid/widget/TextView;

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_5
    move-object p1, p2

    .line 101
    :goto_4
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionStatusText:Landroid/widget/TextView;

    .line 102
    .line 103
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_atos_toolbar_connection_status:I

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/ImageView;

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_6
    move-object p1, p2

    .line 117
    :goto_5
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->connectionStatusImage:Landroid/widget/ImageView;

    .line 118
    .line 119
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->updateConnectionStatus()V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 123
    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_atos_toolbar_view_tags:I

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/ImageView;

    .line 133
    .line 134
    goto :goto_6

    .line 135
    :cond_7
    move-object p1, p2

    .line 136
    :goto_6
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->viewTagsImageView:Landroid/widget/ImageView;

    .line 137
    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onViewCreated$2;

    .line 141
    .line 142
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onViewCreated$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    :cond_8
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 149
    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->iv_atos_toolbar_clear_filter:I

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroid/widget/ImageView;

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_9
    move-object p1, p2

    .line 162
    :goto_7
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->filterResetImage:Landroid/widget/ImageView;

    .line 163
    .line 164
    const/16 v0, 0x8

    .line 165
    .line 166
    if-eqz p1, :cond_a

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    :cond_a
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->filterResetImage:Landroid/widget/ImageView;

    .line 172
    .line 173
    if-eqz p1, :cond_b

    .line 174
    .line 175
    new-instance v1, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onViewCreated$3;

    .line 176
    .line 177
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onViewCreated$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    :cond_b
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->root:Landroid/view/View;

    .line 184
    .line 185
    if-eqz p1, :cond_c

    .line 186
    .line 187
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->iv_atos_toolbar_options:I

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    move-object p2, p1

    .line 194
    check-cast p2, Landroid/widget/ImageView;

    .line 195
    .line 196
    :cond_c
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->popupMenuImage:Landroid/widget/ImageView;

    .line 197
    .line 198
    if-eqz p2, :cond_d

    .line 199
    .line 200
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onViewCreated$4;

    .line 201
    .line 202
    invoke-direct {p1, p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onViewCreated$4;-><init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    .line 207
    .line 208
    :cond_d
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->mode:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 209
    .line 210
    sget-object p2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->ACTIVITY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 211
    .line 212
    if-ne p1, p2, :cond_e

    .line 213
    .line 214
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->viewTagsImageView:Landroid/widget/ImageView;

    .line 215
    .line 216
    if-eqz p1, :cond_e

    .line 217
    .line 218
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    :cond_e
    return-void
.end method

.method public final restoreDefaultTagListState()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->tagsListVisible:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->viewTagsImageView:Landroid/widget/ImageView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v1, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_menu_white:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final showRegulatoryDialog()V
    .locals 3

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/RegulatoryDialogFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->activityContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/toughstump/atos/activity/ui/dialog/RegulatoryDialogFragment;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "RegulatoryDialogFragment"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final showSearchDialog()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->pluginContext:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->activityContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->Companion:Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment$Companion;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "AtosToolbarFragment"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method
