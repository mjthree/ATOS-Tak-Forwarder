.class public final Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private manifestButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parent:Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private root:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private settingsButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private supportButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private trackHistoryButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userGuideButton:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activityContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "parent"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->activityContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic access$getParent$p(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;)Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->parent:Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$showAtosSettings(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->showAtosSettings()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$toast(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->toast(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final showAtosSettings()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->activityContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Lcom/toughstump/atos/activity/pref/prefactivity/PreferencesActivity;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->activityContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final toast(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->activityContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    .line 10
    .line 11
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->activityContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget p3, Lcom/atakmap/android/atos/plugin/R$layout;->atos_activity_home_frag:I

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
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->root:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->root:Landroid/view/View;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_home_manifest:I

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/Button;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, p2

    .line 24
    :goto_0
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->manifestButton:Landroid/widget/Button;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$1;-><init>(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->root:Landroid/view/View;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_home_history:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/Button;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object p1, p2

    .line 50
    :goto_1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->trackHistoryButton:Landroid/widget/Button;

    .line 51
    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$2;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$2;-><init>(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->root:Landroid/view/View;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_home_support:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/widget/Button;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move-object p1, p2

    .line 76
    :goto_2
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->supportButton:Landroid/widget/Button;

    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$3;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$3;-><init>(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->root:Landroid/view/View;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_home_guide:I

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/Button;

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move-object p1, p2

    .line 102
    :goto_3
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->userGuideButton:Landroid/widget/Button;

    .line 103
    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$4;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$4;-><init>(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->root:Landroid/view/View;

    .line 115
    .line 116
    if-eqz p1, :cond_8

    .line 117
    .line 118
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_home_settings:I

    .line 119
    .line 120
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    move-object p2, p1

    .line 125
    check-cast p2, Landroid/widget/Button;

    .line 126
    .line 127
    :cond_8
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->settingsButton:Landroid/widget/Button;

    .line 128
    .line 129
    if-eqz p2, :cond_9

    .line 130
    .line 131
    new-instance p1, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$5;

    .line 132
    .line 133
    invoke-direct {p1, p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$5;-><init>(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    :cond_9
    return-void
.end method
