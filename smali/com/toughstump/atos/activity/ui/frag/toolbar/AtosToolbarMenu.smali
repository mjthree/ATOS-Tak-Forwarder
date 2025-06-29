.class public final Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;
.super Landroid/widget/PopupMenu;
.source "SourceFile"


# instance fields
.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;
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
    const-string v0, "mode"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 12
    .line 13
    sget v1, Lcom/atakmap/android/atos/plugin/R$style;->popupMenuStyle:I

    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->pluginContext:Landroid/content/Context;

    .line 22
    .line 23
    sget-object p1, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;->MAP:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMode;

    .line 24
    .line 25
    if-ne p3, p1, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->initAtakMenu()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->initActivityMenu()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method private final add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->getIconWithText(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {p1, v1, v0, p2, p3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final getIconWithText(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->getDrawableId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getDrawable(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->getTitle()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, v0, p1}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->menuIconWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method private final initActivityMenu()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getMenu(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->SEARCH:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 12
    .line 13
    invoke-direct {p0, v0, v2, v3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->HISTORY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 25
    .line 26
    invoke-direct {p0, v0, v2, v3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->MANIFEST:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 38
    .line 39
    invoke-direct {p0, v0, v2, v3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->SETTINGS:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 51
    .line 52
    invoke-direct {p0, v0, v2, v3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x5

    .line 63
    sget-object v2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->REGULATORY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 64
    .line 65
    invoke-direct {p0, v0, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private final initAtakMenu()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getMenu(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->SEARCH:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 12
    .line 13
    invoke-direct {p0, v0, v2, v3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->HISTORY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 25
    .line 26
    invoke-direct {p0, v0, v2, v3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->MANIFEST:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 38
    .line 39
    invoke-direct {p0, v0, v2, v3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x4

    .line 50
    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->CLEAR:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 51
    .line 52
    invoke-direct {p0, v0, v2, v3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getHideStaleTags()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    sget-object v2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->STALE_CHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sget-object v2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->STALE_UNCHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 71
    .line 72
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 v4, 0x5

    .line 80
    invoke-direct {p0, v3, v4, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getOnlyCurrentManifestVisible()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->CURRENT_MANIFEST_CHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    sget-object v0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->CURRENT_MANIFEST_UNCHECKED:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 97
    .line 98
    :goto_1
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 v3, 0x6

    .line 106
    invoke-direct {p0, v2, v3, v0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v2, 0x7

    .line 117
    sget-object v3, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->SETTINGS:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 118
    .line 119
    invoke-direct {p0, v0, v2, v3}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/16 v1, 0x8

    .line 130
    .line 131
    sget-object v2, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;->REGULATORY:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;

    .line 132
    .line 133
    invoke-direct {p0, v0, v1, v2}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenu;->add(Landroid/view/Menu;ILcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarMenuOptions;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method private final menuIconWithText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/text/SpannableString;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "    "

    .line 21
    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Landroid/text/style/ImageSpan;

    .line 36
    .line 37
    invoke-direct {p2, p1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    const/16 v1, 0x21

    .line 42
    .line 43
    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method
