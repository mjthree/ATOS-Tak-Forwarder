.class public final Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosCotDetailView"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private atosDetailsButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->Companion:Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$showDialog(Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->showDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final showDialog()V
    .locals 11

    .line 1
    const-string v0, "Handling ATOS DETAILS on click..."

    .line 2
    .line 3
    const-string v1, "AtosCotDetailView"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->pluginContext:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v7, p0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz v7, :cond_1

    .line 17
    .line 18
    new-instance v10, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->pluginContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/atakmap/android/atos/AtosLifecycle;->getActivityContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    sget-object v5, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->VIEW:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 32
    .line 33
    const/16 v8, 0x8

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    move-object v2, v10

    .line 38
    invoke-direct/range {v2 .. v9}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;Lcom/toughstump/atos/manifest/AtosManifestTag;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v10, v0

    .line 43
    :goto_0
    :try_start_0
    sget-object v2, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/atakmap/android/atos/AtosLifecycle;->getActivityContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    instance-of v3, v2, Landroidx/fragment/app/FragmentActivity;

    .line 50
    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-object v2, v0

    .line 59
    :goto_1
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_3
    if-eqz v0, :cond_4

    .line 66
    .line 67
    if-eqz v10, :cond_4

    .line 68
    .line 69
    sget-object v2, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->Companion:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$Companion;

    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v10, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v3, "Failed to show dialog fragment for ATOS DETAILS "

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final getManifestTag()Lcom/toughstump/atos/manifest/AtosManifestTag;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setManifestTag(Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 0
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestTag;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    return-void
.end method

.method public final setup(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->pluginContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget v0, Lcom/atakmap/android/atos/plugin/R$layout;->atos_cot_details:I

    .line 13
    .line 14
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->view:Landroid/view/View;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_cot_detail_view:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/Button;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;->atosDetailsButton:Landroid/widget/Button;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    new-instance v0, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView$setup$1;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView$setup$1;-><init>(Lcom/toughstump/atos/activity/ui/view/AtosCotDetailView;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
