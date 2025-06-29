.class public final Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SearchTagDialogFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private attributeLogicAnd:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callsignEdit:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorBlue:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorCyan:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorDarkGreen:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorGreen:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorMagenta:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorMaroon:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorOrange:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorPurple:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorRed:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorTeal:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorWhite:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorYellow:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private distanceEdit:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginInflater:Landroid/view/LayoutInflater;

.field private root:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagIdEndEdit:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagIdStartEdit:Landroid/widget/EditText;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeBoat:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeBundle:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeCustom:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeEquipment:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeFixedWing:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeHound:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeMedical:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typePax:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeRotaryWing:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeUas:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeVehicle:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeWeapon:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->Companion:Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
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
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->pluginContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->activityContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->pluginInflater:Landroid/view/LayoutInflater;

    .line 23
    .line 24
    return-void
.end method

.method private final applyFilter()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->getFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/state/db/AtosStateRepository;->updateFilter(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CheckBox;",
            "Lcom/toughstump/atos/AtosColor;",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/AtosColor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CheckBox;",
            "Lcom/toughstump/atos/AtosTrackType;",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/AtosTrackType;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final getColors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/AtosColor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorWhite:Landroid/widget/CheckBox;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/toughstump/atos/AtosColor;->WHITE:Lcom/toughstump/atos/AtosColor;

    .line 12
    .line 13
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorYellow:Landroid/widget/CheckBox;

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/toughstump/atos/AtosColor;->YELLOW:Lcom/toughstump/atos/AtosColor;

    .line 22
    .line 23
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorOrange:Landroid/widget/CheckBox;

    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/toughstump/atos/AtosColor;->ORANGE:Lcom/toughstump/atos/AtosColor;

    .line 32
    .line 33
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorMagenta:Landroid/widget/CheckBox;

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lcom/toughstump/atos/AtosColor;->MAGENTA:Lcom/toughstump/atos/AtosColor;

    .line 42
    .line 43
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorRed:Landroid/widget/CheckBox;

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object v2, Lcom/toughstump/atos/AtosColor;->RED:Lcom/toughstump/atos/AtosColor;

    .line 52
    .line 53
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorMaroon:Landroid/widget/CheckBox;

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Lcom/toughstump/atos/AtosColor;->MAROON:Lcom/toughstump/atos/AtosColor;

    .line 62
    .line 63
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorPurple:Landroid/widget/CheckBox;

    .line 67
    .line 68
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Lcom/toughstump/atos/AtosColor;->PURPLE:Lcom/toughstump/atos/AtosColor;

    .line 72
    .line 73
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorBlue:Landroid/widget/CheckBox;

    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/toughstump/atos/AtosColor;->BLUE:Lcom/toughstump/atos/AtosColor;

    .line 82
    .line 83
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorCyan:Landroid/widget/CheckBox;

    .line 87
    .line 88
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lcom/toughstump/atos/AtosColor;->CYAN:Lcom/toughstump/atos/AtosColor;

    .line 92
    .line 93
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorTeal:Landroid/widget/CheckBox;

    .line 97
    .line 98
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object v2, Lcom/toughstump/atos/AtosColor;->TEAL:Lcom/toughstump/atos/AtosColor;

    .line 102
    .line 103
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorGreen:Landroid/widget/CheckBox;

    .line 107
    .line 108
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object v2, Lcom/toughstump/atos/AtosColor;->GREEN:Lcom/toughstump/atos/AtosColor;

    .line 112
    .line 113
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorDarkGreen:Landroid/widget/CheckBox;

    .line 117
    .line 118
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    sget-object v2, Lcom/toughstump/atos/AtosColor;->DARK_GREEN:Lcom/toughstump/atos/AtosColor;

    .line 122
    .line 123
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkColor(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosColor;Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    return-object v0
.end method

.method private final getFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->getColors()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v6

    .line 5
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->getTypes()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->callsignEdit:Landroid/widget/EditText;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v0, 0x0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->distanceEdit:Landroid/widget/EditText;

    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    int-to-double v3, v1

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    .line 47
    .line 48
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    move-object v3, v1

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-object v3, v0

    .line 52
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->tagIdStartEdit:Landroid/widget/EditText;

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 69
    :try_start_2
    iget-object v4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->tagIdEndEdit:Landroid/widget/EditText;

    .line 70
    .line 71
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 86
    :catch_1
    :goto_1
    move-object v5, v0

    .line 87
    move-object v4, v1

    .line 88
    goto :goto_2

    .line 89
    :catch_2
    move-object v1, v0

    .line 90
    goto :goto_1

    .line 91
    :goto_2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->attributeLogicAnd:Landroid/widget/CheckBox;

    .line 92
    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    :goto_3
    move v8, v0

    .line 100
    goto :goto_4

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    goto :goto_3

    .line 103
    :goto_4
    new-instance v11, Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 104
    .line 105
    const/4 v9, 0x1

    .line 106
    const/4 v10, 0x0

    .line 107
    const/4 v1, 0x0

    .line 108
    move-object v0, v11

    .line 109
    invoke-direct/range {v0 .. v10}, Lcom/toughstump/atos/filter/AtosFilterCriteria;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    .line 111
    .line 112
    return-object v11
.end method

.method private final getTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/AtosTrackType;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typePax:Landroid/widget/CheckBox;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->PAX:Lcom/toughstump/atos/AtosTrackType;

    .line 12
    .line 13
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeHound:Landroid/widget/CheckBox;

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->K9:Lcom/toughstump/atos/AtosTrackType;

    .line 22
    .line 23
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeVehicle:Landroid/widget/CheckBox;

    .line 27
    .line 28
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->VEHICLE:Lcom/toughstump/atos/AtosTrackType;

    .line 32
    .line 33
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeUas:Landroid/widget/CheckBox;

    .line 37
    .line 38
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->UAS:Lcom/toughstump/atos/AtosTrackType;

    .line 42
    .line 43
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeBundle:Landroid/widget/CheckBox;

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->BUNDLE:Lcom/toughstump/atos/AtosTrackType;

    .line 52
    .line 53
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeCustom:Landroid/widget/CheckBox;

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->CUSTOM:Lcom/toughstump/atos/AtosTrackType;

    .line 62
    .line 63
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeMedical:Landroid/widget/CheckBox;

    .line 67
    .line 68
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->MEDICAL:Lcom/toughstump/atos/AtosTrackType;

    .line 72
    .line 73
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeEquipment:Landroid/widget/CheckBox;

    .line 77
    .line 78
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->EQUIPMENT:Lcom/toughstump/atos/AtosTrackType;

    .line 82
    .line 83
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeFixedWing:Landroid/widget/CheckBox;

    .line 87
    .line 88
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->FIXED_WING:Lcom/toughstump/atos/AtosTrackType;

    .line 92
    .line 93
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeRotaryWing:Landroid/widget/CheckBox;

    .line 97
    .line 98
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->ROTARY_WING:Lcom/toughstump/atos/AtosTrackType;

    .line 102
    .line 103
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeWeapon:Landroid/widget/CheckBox;

    .line 107
    .line 108
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->WEAPON:Lcom/toughstump/atos/AtosTrackType;

    .line 112
    .line 113
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeBoat:Landroid/widget/CheckBox;

    .line 117
    .line 118
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    sget-object v2, Lcom/toughstump/atos/AtosTrackType;->BOAT:Lcom/toughstump/atos/AtosTrackType;

    .line 122
    .line 123
    invoke-direct {p0, v1, v2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->checkType(Landroid/widget/CheckBox;Lcom/toughstump/atos/AtosTrackType;Ljava/util/List;)V

    .line 124
    .line 125
    .line 126
    return-object v0
.end method

.method private final hideAll()V
    .locals 12

    .line 1
    new-instance v11, Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 2
    .line 3
    const/16 v9, 0xfe

    .line 4
    .line 5
    const/4 v10, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    move-object v0, v11

    .line 15
    invoke-direct/range {v0 .. v10}, Lcom/toughstump/atos/filter/AtosFilterCriteria;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getTagStateRepository()Lcom/toughstump/atos/state/db/AtosStateRepository;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v11}, Lcom/toughstump/atos/state/db/AtosStateRepository;->updateFilter(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, -0x3

    .line 2
    if-eq p2, p1, :cond_1

    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    if-eq p2, p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->applyFilter()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->hideAll()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->pluginInflater:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    sget v0, Lcom/atakmap/android/atos/plugin/R$layout;->atos_filter_tags:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->root:Landroid/view/View;

    .line 11
    .line 12
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->activityContext:Landroid/content/Context;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {p1, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    const-string v0, "Filter Tags"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->root:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "Apply Filter"

    .line 33
    .line 34
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "HIDE ALL"

    .line 39
    .line 40
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v0, "Cancel"

    .line 45
    .line 46
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "create(...)"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
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
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->root:Landroid/view/View;

    .line 7
    .line 8
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
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_white:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroid/widget/CheckBox;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorWhite:Landroid/widget/CheckBox;

    .line 18
    .line 19
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_yellow:I

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Landroid/widget/CheckBox;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorYellow:Landroid/widget/CheckBox;

    .line 28
    .line 29
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_orange:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/widget/CheckBox;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorOrange:Landroid/widget/CheckBox;

    .line 38
    .line 39
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_magenta:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Landroid/widget/CheckBox;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorMagenta:Landroid/widget/CheckBox;

    .line 48
    .line 49
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_red:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Landroid/widget/CheckBox;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorRed:Landroid/widget/CheckBox;

    .line 58
    .line 59
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_maroon:I

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Landroid/widget/CheckBox;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorMaroon:Landroid/widget/CheckBox;

    .line 68
    .line 69
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_purple:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Landroid/widget/CheckBox;

    .line 76
    .line 77
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorPurple:Landroid/widget/CheckBox;

    .line 78
    .line 79
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_blue:I

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    check-cast p2, Landroid/widget/CheckBox;

    .line 86
    .line 87
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorBlue:Landroid/widget/CheckBox;

    .line 88
    .line 89
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_cyan:I

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    check-cast p2, Landroid/widget/CheckBox;

    .line 96
    .line 97
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorCyan:Landroid/widget/CheckBox;

    .line 98
    .line 99
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_teal:I

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    check-cast p2, Landroid/widget/CheckBox;

    .line 106
    .line 107
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorTeal:Landroid/widget/CheckBox;

    .line 108
    .line 109
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_green:I

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Landroid/widget/CheckBox;

    .line 116
    .line 117
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorGreen:Landroid/widget/CheckBox;

    .line 118
    .line 119
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_color_dark_green:I

    .line 120
    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    check-cast p2, Landroid/widget/CheckBox;

    .line 126
    .line 127
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->colorDarkGreen:Landroid/widget/CheckBox;

    .line 128
    .line 129
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_bundle:I

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, Landroid/widget/CheckBox;

    .line 136
    .line 137
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeBundle:Landroid/widget/CheckBox;

    .line 138
    .line 139
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_pax:I

    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Landroid/widget/CheckBox;

    .line 146
    .line 147
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typePax:Landroid/widget/CheckBox;

    .line 148
    .line 149
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_vehicle:I

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    check-cast p2, Landroid/widget/CheckBox;

    .line 156
    .line 157
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeVehicle:Landroid/widget/CheckBox;

    .line 158
    .line 159
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_hound:I

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    check-cast p2, Landroid/widget/CheckBox;

    .line 166
    .line 167
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeHound:Landroid/widget/CheckBox;

    .line 168
    .line 169
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_custom:I

    .line 170
    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    check-cast p2, Landroid/widget/CheckBox;

    .line 176
    .line 177
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeCustom:Landroid/widget/CheckBox;

    .line 178
    .line 179
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_uas:I

    .line 180
    .line 181
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    check-cast p2, Landroid/widget/CheckBox;

    .line 186
    .line 187
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeUas:Landroid/widget/CheckBox;

    .line 188
    .line 189
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_med:I

    .line 190
    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    check-cast p2, Landroid/widget/CheckBox;

    .line 196
    .line 197
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeMedical:Landroid/widget/CheckBox;

    .line 198
    .line 199
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_equip:I

    .line 200
    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    check-cast p2, Landroid/widget/CheckBox;

    .line 206
    .line 207
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeEquipment:Landroid/widget/CheckBox;

    .line 208
    .line 209
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_fixed:I

    .line 210
    .line 211
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    check-cast p2, Landroid/widget/CheckBox;

    .line 216
    .line 217
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeFixedWing:Landroid/widget/CheckBox;

    .line 218
    .line 219
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_rotary:I

    .line 220
    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    check-cast p2, Landroid/widget/CheckBox;

    .line 226
    .line 227
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeRotaryWing:Landroid/widget/CheckBox;

    .line 228
    .line 229
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_weapon:I

    .line 230
    .line 231
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    check-cast p2, Landroid/widget/CheckBox;

    .line 236
    .line 237
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeWeapon:Landroid/widget/CheckBox;

    .line 238
    .line 239
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_filter_type_boat:I

    .line 240
    .line 241
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    check-cast p2, Landroid/widget/CheckBox;

    .line 246
    .line 247
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->typeBoat:Landroid/widget/CheckBox;

    .line 248
    .line 249
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->edit_filter_callsign:I

    .line 250
    .line 251
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    check-cast p2, Landroid/widget/EditText;

    .line 256
    .line 257
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->callsignEdit:Landroid/widget/EditText;

    .line 258
    .line 259
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->edit_filter_distance:I

    .line 260
    .line 261
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    check-cast p2, Landroid/widget/EditText;

    .line 266
    .line 267
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->distanceEdit:Landroid/widget/EditText;

    .line 268
    .line 269
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->edit_filter_tag_id_start:I

    .line 270
    .line 271
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    check-cast p2, Landroid/widget/EditText;

    .line 276
    .line 277
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->tagIdStartEdit:Landroid/widget/EditText;

    .line 278
    .line 279
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->edit_filter_tag_id_end:I

    .line 280
    .line 281
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    check-cast p2, Landroid/widget/EditText;

    .line 286
    .line 287
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->tagIdEndEdit:Landroid/widget/EditText;

    .line 288
    .line 289
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->checkbox_attribute_logic_and:I

    .line 290
    .line 291
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Landroid/widget/CheckBox;

    .line 296
    .line 297
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/filter/SearchTagDialogFragment;->attributeLogicAnd:Landroid/widget/CheckBox;

    .line 298
    .line 299
    return-void
.end method
