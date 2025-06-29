.class public final Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;,
        Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;,
        Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewManifestDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewManifestDialog.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNewManifestDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewManifestDialog.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
    }
.end annotation


# instance fields
.field private final callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dialogContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private editValue:Landroid/widget/EditText;

.field private includeActiveTagsCheckBox:Landroid/widget/CheckBox;

.field private final manifest:Lcom/toughstump/atos/manifest/AtosManifest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mode:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pluginContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->pluginContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->dialogContext:Landroid/content/Context;

    .line 2
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->mode:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 3
    iput-object p5, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;)V

    return-void
.end method

.method private final addCurrentTagsToManifest(Lcom/toughstump/atos/manifest/AtosManifest;)Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 10

    .line 1
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getManifestRepo()Lcom/toughstump/atos/manifest/AtosManifestRepository;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    const/16 v8, 0xf

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    move-object v1, p1

    .line 27
    invoke-static/range {v1 .. v9}, Lcom/toughstump/atos/manifest/AtosManifest;->copy$default(Lcom/toughstump/atos/manifest/AtosManifest;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method private final getPositiveButtonText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->mode:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    .line 2
    .line 3
    sget-object v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    const-string v0, "Rename"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "Add"

    .line 18
    .line 19
    :goto_0
    return-object v0
.end method

.method private final getTitleText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->mode:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    .line 2
    .line 3
    sget-object v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const-string v0, "Add New ATOS Manifest"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "Rename ATOS Manifest"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "Copy New ATOS Manifest"

    .line 24
    .line 25
    :goto_0
    return-object v0
.end method

.method private final getValueText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->mode:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    .line 2
    .line 3
    sget-object v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const-string v2, ""

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v2, v0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    const/4 v1, 0x0

    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, " - Copy"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :cond_4
    :goto_1
    return-object v2
.end method


# virtual methods
.method public final getCallback()Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifest()Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMode()Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->mode:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p1, -0x1

    .line 2
    if-eq p2, p1, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->editValue:Landroid/widget/EditText;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    const-string p1, "editValue"

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object p1, p2

    .line 16
    :cond_1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->mode:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    .line 25
    .line 26
    sget-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    aget p1, v0, p1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    if-eq p1, v0, :cond_7

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    if-eq p1, v0, :cond_6

    .line 39
    .line 40
    const/4 v0, 0x3

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eq p1, v0, :cond_5

    .line 43
    .line 44
    const/4 v0, 0x4

    .line 45
    if-ne p1, v0, :cond_4

    .line 46
    .line 47
    sget-object p1, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->newManifest(Z)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/16 v7, 0x1d

    .line 54
    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v1, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    const-wide/16 v4, 0x0

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-static/range {v0 .. v8}, Lcom/toughstump/atos/manifest/AtosManifest;->copy$default(Lcom/toughstump/atos/manifest/AtosManifest;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->includeActiveTagsCheckBox:Landroid/widget/CheckBox;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    const-string v0, "includeActiveTagsCheckBox"

    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object p2, v0

    .line 76
    :goto_0
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_3

    .line 81
    .line 82
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;

    .line 83
    .line 84
    invoke-direct {p0, p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->addCurrentTagsToManifest(Lcom/toughstump/atos/manifest/AtosManifest;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p2, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;->onManifestCreated(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;

    .line 92
    .line 93
    invoke-interface {p2, p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;->onManifestCreated(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 98
    .line 99
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p1

    .line 103
    :cond_5
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;

    .line 104
    .line 105
    sget-object p2, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 106
    .line 107
    invoke-virtual {p2, v1}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->newManifest(Z)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const/16 v7, 0x1d

    .line 112
    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v1, 0x0

    .line 115
    const/4 v3, 0x0

    .line 116
    const-wide/16 v4, 0x0

    .line 117
    .line 118
    const/4 v6, 0x0

    .line 119
    invoke-static/range {v0 .. v8}, Lcom/toughstump/atos/manifest/AtosManifest;->copy$default(Lcom/toughstump/atos/manifest/AtosManifest;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-interface {p1, p2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;->onManifestCreated(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_6
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 128
    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    const/16 v7, 0x1d

    .line 132
    .line 133
    const/4 v8, 0x0

    .line 134
    const/4 v1, 0x0

    .line 135
    const/4 v3, 0x0

    .line 136
    const-wide/16 v4, 0x0

    .line 137
    .line 138
    const/4 v6, 0x0

    .line 139
    invoke-static/range {v0 .. v8}, Lcom/toughstump/atos/manifest/AtosManifest;->copy$default(Lcom/toughstump/atos/manifest/AtosManifest;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_8

    .line 144
    .line 145
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;

    .line 146
    .line 147
    invoke-interface {p2, p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;->onManifestRenamed(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_7
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 152
    .line 153
    if-eqz p1, :cond_8

    .line 154
    .line 155
    sget-object p2, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 156
    .line 157
    invoke-virtual {p2, p1}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->copyManifest(Lcom/toughstump/atos/manifest/AtosManifest;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    const/16 v7, 0x1d

    .line 164
    .line 165
    const/4 v8, 0x0

    .line 166
    const/4 v1, 0x0

    .line 167
    const/4 v3, 0x0

    .line 168
    const-wide/16 v4, 0x0

    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    invoke-static/range {v0 .. v8}, Lcom/toughstump/atos/manifest/AtosManifest;->copy$default(Lcom/toughstump/atos/manifest/AtosManifest;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_8

    .line 176
    .line 177
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;

    .line 178
    .line 179
    invoke-interface {p2, p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestInterface;->onManifestCreated(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    :goto_1
    return-void
.end method

.method public final show()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/atakmap/android/atos/plugin/R$layout;->atos_dialog_manifest_name:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->view:Landroid/view/View;

    .line 15
    .line 16
    const-string v1, "view"

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v2

    .line 24
    :cond_0
    sget v3, Lcom/atakmap/android/atos/plugin/R$id;->edit_dlg_manifest_new_name:I

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/EditText;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->editValue:Landroid/widget/EditText;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    const-string v0, "editValue"

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    move-object v0, v2

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->getValueText()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->view:Landroid/view/View;

    .line 50
    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object v0, v2

    .line 57
    :cond_2
    sget v3, Lcom/atakmap/android/atos/plugin/R$id;->chk_dlg_manifest_include_active_tags:I

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/CheckBox;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->includeActiveTagsCheckBox:Landroid/widget/CheckBox;

    .line 66
    .line 67
    const-string v3, "includeActiveTagsCheckBox"

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v0, v2

    .line 75
    :cond_3
    const/4 v4, 0x1

    .line 76
    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->mode:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    .line 80
    .line 81
    sget-object v4, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;->ADD:Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog$NewManifestDialogMode;

    .line 82
    .line 83
    if-eq v0, v4, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->includeActiveTagsCheckBox:Landroid/widget/CheckBox;

    .line 86
    .line 87
    if-nez v0, :cond_4

    .line 88
    .line 89
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    move-object v0, v2

    .line 93
    :cond_4
    const/16 v3, 0x8

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 99
    .line 100
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->dialogContext:Landroid/content/Context;

    .line 101
    .line 102
    const/4 v4, 0x2

    .line 103
    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->getPositiveButtonText()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v3, "Cancel"

    .line 115
    .line 116
    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->getTitleText()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/NewManifestDialog;->view:Landroid/view/View;

    .line 129
    .line 130
    if-nez v3, :cond_6

    .line 131
    .line 132
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    move-object v2, v3

    .line 137
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 142
    .line 143
    .line 144
    return-void
.end method
