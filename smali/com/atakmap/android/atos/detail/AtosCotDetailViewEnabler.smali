.class public final Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static detailExtension:Lcom/atakmap/android/cotdetails/ExtendedInfoView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;

    invoke-direct {v0}, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;-><init>()V

    sput-object v0, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->INSTANCE:Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;

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

.method private final registerDetailView(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->setup(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler$registerDetailView$1;

    .line 10
    .line 11
    invoke-direct {v1, p1, v0}, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler$registerDetailView$1;-><init>(Landroid/content/Context;Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;)V

    .line 12
    .line 13
    .line 14
    sput-object v1, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->detailExtension:Lcom/atakmap/android/cotdetails/ExtendedInfoView;

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/atakmap/android/cotdetails/CoTInfoMapComponent;->a()Lcom/atakmap/android/cotdetails/CoTInfoMapComponent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->detailExtension:Lcom/atakmap/android/cotdetails/ExtendedInfoView;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/atakmap/android/cotdetails/CoTInfoMapComponent;->a(Lcom/atakmap/android/cotdetails/ExtendedInfoView;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final start(Landroid/content/Context;)V
    .locals 1
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
    invoke-direct {p0, p1}, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->registerDetailView(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->detailExtension:Lcom/atakmap/android/cotdetails/ExtendedInfoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lcom/atakmap/android/cotdetails/CoTInfoMapComponent;->a()Lcom/atakmap/android/cotdetails/CoTInfoMapComponent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->detailExtension:Lcom/atakmap/android/cotdetails/ExtendedInfoView;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/atakmap/android/cotdetails/CoTInfoMapComponent;->b(Lcom/atakmap/android/cotdetails/ExtendedInfoView;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/atakmap/android/atos/detail/AtosCotDetailViewEnabler;->detailExtension:Lcom/atakmap/android/cotdetails/ExtendedInfoView;

    .line 19
    .line 20
    return-void
.end method
