.class public final Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nManifestTagDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManifestTagDialogFragment.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 ManifestTagDialogMode.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogModeKt\n+ 6 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,350:1\n1187#2,2:351\n1261#2,4:353\n295#2,2:367\n295#2,2:369\n1#3:357\n11158#4:358\n11493#4,3:359\n11158#4:363\n11493#4,3:364\n14#5:362\n48#6,19:371\n84#6,3:390\n48#6,19:393\n84#6,3:412\n*S KotlinDebug\n*F\n+ 1 ManifestTagDialogFragment.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment\n*L\n64#1:351,2\n64#1:353,4\n254#1:367,2\n259#1:369,2\n136#1:358\n136#1:359,3\n164#1:363\n164#1:364,3\n164#1:362\n266#1:371,19\n266#1:390,3\n267#1:393,19\n267#1:412,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nManifestTagDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManifestTagDialogFragment.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 ManifestTagDialogMode.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogModeKt\n+ 6 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,350:1\n1187#2,2:351\n1261#2,4:353\n295#2,2:367\n295#2,2:369\n1#3:357\n11158#4:358\n11493#4,3:359\n11158#4:363\n11493#4,3:364\n14#5:362\n48#6,19:371\n84#6,3:390\n48#6,19:393\n84#6,3:412\n*S KotlinDebug\n*F\n+ 1 ManifestTagDialogFragment.kt\ncom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment\n*L\n64#1:351,2\n64#1:353,4\n254#1:367,2\n259#1:369,2\n136#1:358\n136#1:359,3\n164#1:363\n164#1:364,3\n164#1:362\n266#1:371,19\n266#1:390,3\n267#1:393,19\n267#1:412,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ManifestTagDialogFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final activityContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private addMultipleCheckBox:Landroid/widget/CheckBox;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callsignEdit:Landroid/widget/EditText;

.field private colorButton:Landroid/widget/Button;

.field private colorSpinner:Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

.field private final dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private idEdit:Landroid/widget/EditText;

.field private manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private newAttributeButton:Landroid/widget/Button;

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resetAttributeButton:Landroid/widget/Button;

.field private root:Landroid/view/View;

.field private final tagAttributeLayoutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tagLayout:Landroid/widget/LinearLayout;

.field private typeButton:Landroid/widget/Button;

.field private typeSpinner:Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

.field private userInteraction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->Companion:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/toughstump/atos/manifest/AtosManifestTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pluginContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manifestTag"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->pluginContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->activityContext:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 8
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;

    .line 9
    iput-object p5, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->tagAttributeLayoutList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;Lcom/toughstump/atos/manifest/AtosManifestTag;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->ADD:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object/from16 v5, p4

    :goto_1
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_2

    .line 2
    sget-object v6, Lcom/toughstump/atos/manifest/AtosManifestTag;->Companion:Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;->newDefaultManifestTag$default(Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;ILcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    return-void
.end method

.method public static final synthetic access$addNewAttribute(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->addNewAttribute()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$checkValidity(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->checkValidity()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$deleteAttribute(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->deleteAttribute(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getColorSpinner$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->colorSpinner:Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getManifestTag$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Lcom/toughstump/atos/manifest/AtosManifestTag;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTypeSpinner$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->typeSpinner:Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getUserInteraction$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->userInteraction:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$resetAttributes(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->resetAttributes()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setManifestTag$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Lcom/toughstump/atos/manifest/AtosManifestTag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setUserInteraction$p(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->userInteraction:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$updateColorButtonText(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->updateColorButtonText()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateManifestTagAttributes(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->updateManifestTagAttributes()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$updateTypeButtonText(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->updateTypeButtonText()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final addNewAttribute()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getAttributes()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    const-string v0, ""

    .line 12
    .line 13
    invoke-interface {v6, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 17
    .line 18
    const/16 v7, 0xf

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static/range {v1 .. v8}, Lcom/toughstump/atos/manifest/AtosManifestTag;->copy$default(Lcom/toughstump/atos/manifest/AtosManifestTag;ILjava/lang/String;Lcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;Ljava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->refreshAttributeView()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final checkValidity()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->getTagData()Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "invalid tag data"

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->toast(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 14
    .line 15
    sget-object v2, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->EDIT:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;

    .line 29
    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {v1, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;->onManifestTagUpdated(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->isAddingMultiple()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void

    .line 51
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "just added "

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getCallsign()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->toast(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->reset()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private final deleteAttribute(Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getAttributes()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    invoke-static {v6}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 19
    .line 20
    const/16 v7, 0xf

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-static/range {v1 .. v8}, Lcom/toughstump/atos/manifest/AtosManifestTag;->copy$default(Lcom/toughstump/atos/manifest/AtosManifestTag;ILjava/lang/String;Lcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;Ljava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->refreshAttributeView()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final getAttributeMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->tagAttributeLayoutList:Ljava/util/List;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x10

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 20
    .line 21
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->getAttribute()Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v2
.end method

.method private final getSafeAttributes()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->getAttributeMap()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->getSafeAttributes$makeSafe(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->getSafeAttributes$makeSafe(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v4, ""

    .line 51
    .line 52
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-object v0
.end method

.method private static final getSafeAttributes$makeSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v4, 0x4

    .line 2
    const/4 v5, 0x0

    .line 3
    const-string v1, "<"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    move-object v0, p0

    .line 9
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    const/4 v10, 0x4

    .line 14
    const/4 v11, 0x0

    .line 15
    const-string v7, "&"

    .line 16
    .line 17
    const-string v8, ""

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, ">"

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-string v7, "\""

    .line 33
    .line 34
    const-string v8, ""

    .line 35
    .line 36
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "\'"

    .line 41
    .line 42
    const-string v2, ""

    .line 43
    .line 44
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string v7, "/"

    .line 49
    .line 50
    const-string v8, ""

    .line 51
    .line 52
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method private final getTagData()Lcom/toughstump/atos/manifest/AtosManifestTag;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->idEdit:Landroid/widget/EditText;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "idEdit"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->callsignEdit:Landroid/widget/EditText;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    const-string v0, "callsignEdit"

    .line 42
    .line 43
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move-object v1, v0

    .line 48
    :goto_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 57
    .line 58
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->getSafeAttributes()Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const/16 v8, 0xc

    .line 63
    .line 64
    const/4 v9, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    invoke-static/range {v2 .. v9}, Lcom/toughstump/atos/manifest/AtosManifestTag;->copy$default(Lcom/toughstump/atos/manifest/AtosManifestTag;ILjava/lang/String;Lcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;Ljava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v1, "Tag ID: "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getTagId()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, "\nCallsign: "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getCallsign()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, "\nColor: "

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, "\nType: "

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getType()Lcom/toughstump/atos/AtosTrackType;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, "\nAttributes: "

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getAttributes()Ljava/util/Map;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "ManifestTagDialogFragment"

    .line 161
    .line 162
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 166
    .line 167
    return-object v0

    .line 168
    :cond_3
    return-object v1
.end method

.method private final isAddingMultiple()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->addMultipleCheckBox:Landroid/widget/CheckBox;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method private final refreshAttributeView()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->tagLayout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const-string v1, "tagLayout"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->tagAttributeLayoutList:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getType()Lcom/toughstump/atos/AtosTrackType;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/toughstump/atos/AtosTrackTypeKt;->getAttributeDefaults(Lcom/toughstump/atos/AtosTrackType;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    iget-object v5, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getAttributes()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_3

    .line 70
    .line 71
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    move-object v7, v6

    .line 76
    check-cast v7, Ljava/util/Map$Entry;

    .line 77
    .line 78
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move-object v6, v2

    .line 90
    :goto_1
    check-cast v6, Ljava/util/Map$Entry;

    .line 91
    .line 92
    if-eqz v6, :cond_1

    .line 93
    .line 94
    new-instance v4, Lkotlin/Pair;

    .line 95
    .line 96
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getAttributes()Ljava/util/Map;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_8

    .line 130
    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Ljava/util/Map$Entry;

    .line 136
    .line 137
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_6

    .line 146
    .line 147
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    move-object v7, v6

    .line 152
    check-cast v7, Lkotlin/Pair;

    .line 153
    .line 154
    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v8

    .line 162
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    if-eqz v7, :cond_5

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_6
    move-object v6, v2

    .line 170
    :goto_3
    check-cast v6, Lkotlin/Pair;

    .line 171
    .line 172
    if-eqz v6, :cond_7

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_7
    new-instance v5, Lkotlin/Pair;

    .line 176
    .line 177
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-direct {v5, v6, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    if-eqz v3, :cond_a

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    check-cast v3, Lkotlin/Pair;

    .line 207
    .line 208
    new-instance v4, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;

    .line 209
    .line 210
    iget-object v5, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->pluginContext:Landroid/content/Context;

    .line 211
    .line 212
    new-instance v6, Lkotlin/Pair;

    .line 213
    .line 214
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iget-object v7, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 226
    .line 227
    iget-object v8, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 228
    .line 229
    invoke-virtual {v8}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getType()Lcom/toughstump/atos/AtosTrackType;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;-><init>(Landroid/content/Context;Lkotlin/Pair;Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;Lcom/toughstump/atos/AtosTrackType;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->getImageDelete$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Landroid/widget/ImageButton;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    new-instance v6, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$3;

    .line 241
    .line 242
    invoke-direct {v6, p0, v3}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$3;-><init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;Lkotlin/Pair;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4}, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->getEditValue$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Landroid/widget/EditText;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    new-instance v5, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$$inlined$doAfterTextChanged$1;

    .line 253
    .line 254
    invoke-direct {v5, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$$inlined$doAfterTextChanged$1;-><init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4}, Lcom/toughstump/atos/activity/ui/dialog/manifest/TagAttributeView;->getEditKey$ATAK_Plugin_atos_atak_plugin_2_4_0_1_9910af0a_5_4_0_civRelease()Landroid/widget/EditText;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    new-instance v5, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$$inlined$doAfterTextChanged$2;

    .line 265
    .line 266
    invoke-direct {v5, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$refreshAttributeView$$inlined$doAfterTextChanged$2;-><init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 270
    .line 271
    .line 272
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->tagLayout:Landroid/widget/LinearLayout;

    .line 273
    .line 274
    if-nez v3, :cond_9

    .line 275
    .line 276
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    move-object v3, v2

    .line 280
    :cond_9
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 281
    .line 282
    .line 283
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->tagAttributeLayoutList:Ljava/util/List;

    .line 284
    .line 285
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_a
    return-void
.end method

.method private final reset()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getTagId()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getType()Lcom/toughstump/atos/AtosTrackType;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 v3, 0x20

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/16 v7, 0x1c

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    move v2, v0

    .line 48
    invoke-static/range {v1 .. v8}, Lcom/toughstump/atos/manifest/AtosManifestTag;->copy$default(Lcom/toughstump/atos/manifest/AtosManifestTag;ILjava/lang/String;Lcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;Ljava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->idEdit:Landroid/widget/EditText;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    const-string v1, "idEdit"

    .line 60
    .line 61
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    move-object v1, v2

    .line 65
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->callsignEdit:Landroid/widget/EditText;

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    const-string v0, "callsignEdit"

    .line 77
    .line 78
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-object v2, v0

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getCallsign()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private final resetAttributes()V
    .locals 2

    .line 1
    sget-object v0, Lcom/toughstump/atos/manifest/AtosManifestTag;->Companion:Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;->restoreDefaultAttributes(Lcom/toughstump/atos/manifest/AtosManifestTag;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->refreshAttributeView()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final setUpSpinners()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 2
    .line 3
    const-string v1, "root"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v2

    .line 12
    :cond_0
    sget v3, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_dlg_manifest_tag_type:I

    .line 13
    .line 14
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/Button;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->typeButton:Landroid/widget/Button;

    .line 21
    .line 22
    const-string v3, "typeButton"

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v0, v2

    .line 30
    :cond_1
    iget-object v4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->isEditable()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->typeButton:Landroid/widget/Button;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    move-object v0, v2

    .line 47
    :cond_2
    iget-object v4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->isEditable()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    move-object v0, v2

    .line 64
    :cond_3
    sget v4, Lcom/atakmap/android/atos/plugin/R$id;->spin_atos_dlg_manifest_tag_type:I

    .line 65
    .line 66
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->typeSpinner:Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->pluginContext:Landroid/content/Context;

    .line 75
    .line 76
    sget v4, Lcom/atakmap/android/atos/plugin/R$layout;->spinner_item_tag:I

    .line 77
    .line 78
    const-string v5, "Select a Track Type"

    .line 79
    .line 80
    filled-new-array {v5}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-static {}, Lcom/toughstump/atos/AtosTrackType;->values()[Lcom/toughstump/atos/AtosTrackType;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    new-instance v7, Ljava/util/ArrayList;

    .line 93
    .line 94
    array-length v8, v6

    .line 95
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .line 97
    .line 98
    array-length v8, v6

    .line 99
    const/4 v9, 0x0

    .line 100
    move v10, v9

    .line 101
    :goto_0
    if-ge v10, v8, :cond_4

    .line 102
    .line 103
    aget-object v11, v6, v10

    .line 104
    .line 105
    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-interface {v7, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    add-int/lit8 v10, v10, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    .line 117
    .line 118
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 119
    .line 120
    new-instance v6, Lcom/toughstump/atos/activity/ui/spin/AtosSpinnerAdapter;

    .line 121
    .line 122
    invoke-direct {v6, v0, v4, v5}, Lcom/toughstump/atos/activity/ui/spin/AtosSpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->typeSpinner:Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 126
    .line 127
    const-string v4, "typeSpinner"

    .line 128
    .line 129
    if-nez v0, :cond_5

    .line 130
    .line 131
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    move-object v0, v2

    .line 135
    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->typeSpinner:Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 139
    .line 140
    if-nez v0, :cond_6

    .line 141
    .line 142
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    move-object v0, v2

    .line 146
    :cond_6
    new-instance v4, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;

    .line 147
    .line 148
    invoke-direct {v4, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$1;-><init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->typeButton:Landroid/widget/Button;

    .line 155
    .line 156
    if-nez v0, :cond_7

    .line 157
    .line 158
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v0, v2

    .line 162
    :cond_7
    new-instance v4, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$2;

    .line 163
    .line 164
    invoke-direct {v4, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$2;-><init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->typeButton:Landroid/widget/Button;

    .line 171
    .line 172
    if-nez v0, :cond_8

    .line 173
    .line 174
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    move-object v0, v2

    .line 178
    :cond_8
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getType()Lcom/toughstump/atos/AtosTrackType;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 192
    .line 193
    if-nez v0, :cond_9

    .line 194
    .line 195
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    move-object v0, v2

    .line 199
    :cond_9
    sget v3, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_dlg_manifest_tag_color:I

    .line 200
    .line 201
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Landroid/widget/Button;

    .line 206
    .line 207
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->colorButton:Landroid/widget/Button;

    .line 208
    .line 209
    const-string v3, "colorButton"

    .line 210
    .line 211
    if-nez v0, :cond_a

    .line 212
    .line 213
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    move-object v0, v2

    .line 217
    :cond_a
    iget-object v4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 218
    .line 219
    invoke-virtual {v4}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->isEditable()Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->colorButton:Landroid/widget/Button;

    .line 227
    .line 228
    if-nez v0, :cond_b

    .line 229
    .line 230
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    move-object v0, v2

    .line 234
    :cond_b
    iget-object v4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 235
    .line 236
    invoke-virtual {v4}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->isEditable()Z

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 244
    .line 245
    if-nez v0, :cond_c

    .line 246
    .line 247
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    move-object v0, v2

    .line 251
    :cond_c
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->spin_atos_dlg_manifest_tag_color:I

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 258
    .line 259
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->colorSpinner:Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 260
    .line 261
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->pluginContext:Landroid/content/Context;

    .line 262
    .line 263
    sget v1, Lcom/atakmap/android/atos/plugin/R$layout;->spinner_item_tag:I

    .line 264
    .line 265
    const-string v4, "Select a Color"

    .line 266
    .line 267
    filled-new-array {v4}, [Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-static {}, Lcom/toughstump/atos/AtosColor;->values()[Lcom/toughstump/atos/AtosColor;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    new-instance v6, Ljava/util/ArrayList;

    .line 280
    .line 281
    array-length v7, v5

    .line 282
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .line 284
    .line 285
    array-length v7, v5

    .line 286
    :goto_1
    if-ge v9, v7, :cond_d

    .line 287
    .line 288
    aget-object v8, v5, v9

    .line 289
    .line 290
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    add-int/lit8 v9, v9, 0x1

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :cond_d
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 301
    .line 302
    .line 303
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 304
    .line 305
    new-instance v5, Lcom/toughstump/atos/activity/ui/spin/AtosSpinnerAdapter;

    .line 306
    .line 307
    invoke-direct {v5, v0, v1, v4}, Lcom/toughstump/atos/activity/ui/spin/AtosSpinnerAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 308
    .line 309
    .line 310
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->colorSpinner:Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 311
    .line 312
    const-string v1, "colorSpinner"

    .line 313
    .line 314
    if-nez v0, :cond_e

    .line 315
    .line 316
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    move-object v0, v2

    .line 320
    :cond_e
    invoke-virtual {v0, v5}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->colorSpinner:Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;

    .line 324
    .line 325
    if-nez v0, :cond_f

    .line 326
    .line 327
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    move-object v0, v2

    .line 331
    :cond_f
    new-instance v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3;

    .line 332
    .line 333
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$3;-><init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 337
    .line 338
    .line 339
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->colorButton:Landroid/widget/Button;

    .line 340
    .line 341
    if-nez v0, :cond_10

    .line 342
    .line 343
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    move-object v0, v2

    .line 347
    :cond_10
    new-instance v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$4;

    .line 348
    .line 349
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$setUpSpinners$4;-><init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->colorButton:Landroid/widget/Button;

    .line 356
    .line 357
    if-nez v0, :cond_11

    .line 358
    .line 359
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    goto :goto_2

    .line 363
    :cond_11
    move-object v2, v0

    .line 364
    :goto_2
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 365
    .line 366
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/toughstump/atos/AtosColor;->getFriendlyName()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    return-void
.end method

.method private final showConfirmationDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagUpdatedInterface;->onManifestTagDeleted(Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final toast(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->activityContext:Landroid/content/Context;

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

.method private final updateColorButtonText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->colorButton:Landroid/widget/Button;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "colorButton"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getColor()Lcom/toughstump/atos/AtosColor;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final updateManifestTagAttributes()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->getAttributeMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    const/16 v6, 0xf

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-static/range {v0 .. v7}, Lcom/toughstump/atos/manifest/AtosManifestTag;->copy$default(Lcom/toughstump/atos/manifest/AtosManifestTag;ILjava/lang/String;Lcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;Ljava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 19
    .line 20
    return-void
.end method

.method private final updateTypeButtonText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->typeButton:Landroid/widget/Button;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "typeButton"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getType()Lcom/toughstump/atos/AtosTrackType;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
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
    if-eq p2, p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->showConfirmationDialog()V

    .line 6
    .line 7
    .line 8
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->pluginContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget v0, Lcom/atakmap/android/atos/plugin/R$layout;->atos_manifest_tag:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 15
    .line 16
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->activityContext:Landroid/content/Context;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-direct {p1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->getTitle()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    const-string v0, "root"

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    move-object v0, v1

    .line 44
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->getPositiveText()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->getNegativeText()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 69
    .line 70
    sget-object v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->EDIT:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 71
    .line 72
    if-ne v0, v1, :cond_1

    .line 73
    .line 74
    const-string v0, "DELETE"

    .line 75
    .line 76
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v0, "create(...)"

    .line 84
    .line 85
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
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
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "root"

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :cond_0
    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/app/AlertDialog;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->isEditable()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v3, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$onStart$1;

    .line 34
    .line 35
    invoke-direct {v3, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$onStart$1;-><init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_3
    if-eqz v1, :cond_4

    .line 52
    .line 53
    const/4 v0, -0x2

    .line 54
    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 55
    .line 56
    .line 57
    :cond_4
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 10
    .line 11
    const-string p2, "root"

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object p1, v0

    .line 20
    :cond_0
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->edit_atos_dlg_manifest_tag_id:I

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/EditText;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->idEdit:Landroid/widget/EditText;

    .line 29
    .line 30
    const-string v1, "idEdit"

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object p1, v0

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->isEditable()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->idEdit:Landroid/widget/EditText;

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object p1, v0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getTagId()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 69
    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    move-object p1, v0

    .line 76
    :cond_3
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->edit_atos_dlg_manifest_tag_callsign:I

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/widget/EditText;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->callsignEdit:Landroid/widget/EditText;

    .line 85
    .line 86
    const-string v1, "callsignEdit"

    .line 87
    .line 88
    if-nez p1, :cond_4

    .line 89
    .line 90
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    move-object p1, v0

    .line 94
    :cond_4
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;->isEditable()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->callsignEdit:Landroid/widget/EditText;

    .line 104
    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    move-object p1, v0

    .line 111
    :cond_5
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->manifestTag:Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getCallsign()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 121
    .line 122
    if-nez p1, :cond_6

    .line 123
    .line 124
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    move-object p1, v0

    .line 128
    :cond_6
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->check_atos_dlg_manifest_tag_multiple:I

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroid/widget/CheckBox;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->addMultipleCheckBox:Landroid/widget/CheckBox;

    .line 137
    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    const/4 v1, 0x1

    .line 141
    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 142
    .line 143
    .line 144
    :cond_7
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->addMultipleCheckBox:Landroid/widget/CheckBox;

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->dialogMode:Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;

    .line 149
    .line 150
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogModeKt;->getVisibility(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogMode;)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    :cond_8
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->setUpSpinners()V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 161
    .line 162
    if-nez p1, :cond_9

    .line 163
    .line 164
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    move-object p1, v0

    .line 168
    :cond_9
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->atos_dlg_manifest_tag_attr_attribute_layout:I

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    check-cast p1, Landroid/widget/LinearLayout;

    .line 175
    .line 176
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->tagLayout:Landroid/widget/LinearLayout;

    .line 177
    .line 178
    invoke-direct {p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->refreshAttributeView()V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 182
    .line 183
    if-nez p1, :cond_a

    .line 184
    .line 185
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    move-object p1, v0

    .line 189
    :cond_a
    sget v1, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_dlg_manifest_tag_attr_add:I

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Landroid/widget/Button;

    .line 196
    .line 197
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->newAttributeButton:Landroid/widget/Button;

    .line 198
    .line 199
    if-nez p1, :cond_b

    .line 200
    .line 201
    const-string p1, "newAttributeButton"

    .line 202
    .line 203
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    move-object p1, v0

    .line 207
    :cond_b
    new-instance v1, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$onViewCreated$1;

    .line 208
    .line 209
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$onViewCreated$1;-><init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->root:Landroid/view/View;

    .line 216
    .line 217
    if-nez p1, :cond_c

    .line 218
    .line 219
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    move-object p1, v0

    .line 223
    :cond_c
    sget p2, Lcom/atakmap/android/atos/plugin/R$id;->btn_atos_dlg_manifest_tag_attr_default:I

    .line 224
    .line 225
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Landroid/widget/Button;

    .line 230
    .line 231
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;->resetAttributeButton:Landroid/widget/Button;

    .line 232
    .line 233
    if-nez p1, :cond_d

    .line 234
    .line 235
    const-string p1, "resetAttributeButton"

    .line 236
    .line 237
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    goto :goto_0

    .line 241
    :cond_d
    move-object v0, p1

    .line 242
    :goto_0
    new-instance p1, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$onViewCreated$2;

    .line 243
    .line 244
    invoke-direct {p1, p0}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment$onViewCreated$2;-><init>(Lcom/toughstump/atos/activity/ui/dialog/manifest/ManifestTagDialogFragment;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    .line 249
    .line 250
    return-void
.end method
