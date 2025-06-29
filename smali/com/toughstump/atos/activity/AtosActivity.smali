.class public final Lcom/toughstump/atos/activity/AtosActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/AtosActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosActivity.kt\ncom/toughstump/atos/activity/AtosActivity\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n37#2:178\n36#2,3:179\n1#3:182\n*S KotlinDebug\n*F\n+ 1 AtosActivity.kt\ncom/toughstump/atos/activity/AtosActivity\n*L\n99#1:178\n99#1:179,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosActivity.kt\ncom/toughstump/atos/activity/AtosActivity\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n37#2:178\n36#2,3:179\n1#3:182\n*S KotlinDebug\n*F\n+ 1 AtosActivity.kt\ncom/toughstump/atos/activity/AtosActivity\n*L\n99#1:178\n99#1:179,3\n*E\n"
    }
.end annotation


# static fields
.field private static final BACKGROUND_LOCATION_PERMISSION_CODE:I = 0x107f

.field public static final Companion:Lcom/toughstump/atos/activity/AtosActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosMainActivity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private activityFragment:Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fragmentContainer:Landroid/widget/FrameLayout;

.field private isStarted:Z

.field private locationPermissionDialog:Landroid/app/AlertDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/AtosActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/AtosActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/AtosActivity;->Companion:Lcom/toughstump/atos/activity/AtosActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;

    .line 5
    .line 6
    invoke-direct {v0, p0, p0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/toughstump/atos/activity/AtosActivity;->activityFragment:Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic access$getActivityFragment$p(Lcom/toughstump/atos/activity/AtosActivity;)Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/toughstump/atos/activity/AtosActivity;->activityFragment:Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;

    .line 2
    .line 3
    return-object p0
.end method

.method private final askPermissionForBackgroundUsage()V
    .locals 3

    .line 1
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/toughstump/atos/activity/AtosActivity;->locationPermissionDialog:Landroid/app/AlertDialog;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    const-string v1, "Permission Needed!"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "Background Location Permission Needed!, tap \"Allow all time in the next screen\""

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/toughstump/atos/activity/AtosActivity$askPermissionForBackgroundUsage$builder$1;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/toughstump/atos/activity/AtosActivity$askPermissionForBackgroundUsage$builder$1;-><init>(Lcom/toughstump/atos/activity/AtosActivity;)V

    .line 43
    .line 44
    .line 45
    const-string v2, "OK"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "CANCEL"

    .line 52
    .line 53
    sget-object v2, Lcom/toughstump/atos/activity/AtosActivity$askPermissionForBackgroundUsage$builder$2;->INSTANCE:Lcom/toughstump/atos/activity/AtosActivity$askPermissionForBackgroundUsage$builder$2;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/toughstump/atos/activity/AtosActivity;->locationPermissionDialog:Landroid/app/AlertDialog;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/16 v1, 0x107f

    .line 76
    .line 77
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method private final checkBackgroundLocation()V
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/toughstump/atos/activity/AtosActivity;->askPermissionForBackgroundUsage()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final checkExternal()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {}, Latakplugin/atos/r;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v1, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const-string v3, "package"

    .line 26
    .line 27
    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/toughstump/atos/activity/AtosActivity;->startAtos()V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method private final checkPerm()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x1f

    .line 24
    .line 25
    if-lt v1, v2, :cond_0

    .line 26
    .line 27
    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v1, "android.permission.BLUETOOTH"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-direct {p0, v0}, Lcom/toughstump/atos/activity/AtosActivity;->validatePermissions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-lez v1, :cond_1

    .line 57
    .line 58
    const-string v1, "AtosMainActivity"

    .line 59
    .line 60
    const-string v2, "validating permissions"

    .line 61
    .line 62
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    new-array v1, v1, [Ljava/lang/String;

    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, [Ljava/lang/String;

    .line 73
    .line 74
    const/16 v1, 0x29a

    .line 75
    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/toughstump/atos/activity/AtosActivity;->checkExternal()V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/toughstump/atos/activity/AtosActivity;->checkBackgroundLocation()V

    .line 84
    .line 85
    .line 86
    :goto_1
    return-void
.end method

.method private final startAtos()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/toughstump/atos/activity/AtosActivity;->isStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/toughstump/atos/activity/AtosActivity;->isStarted:Z

    .line 8
    .line 9
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/AtosLifecycle;->setPluginContext(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/atakmap/android/atos/AtosLifecycle;->setActivityContext(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->activityStart()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/toughstump/atos/activity/AtosActivity;->fragmentContainer:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    const-string v1, "fragmentContainer"

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v2, p0, Lcom/toughstump/atos/activity/AtosActivity;->fragmentContainer:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object v2, p0, Lcom/toughstump/atos/activity/AtosActivity;->activityFragment:Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private final validatePermissions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
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
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "iterator(...)"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "next(...)"

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/atakmap/android/atos/plugin/R$layout;->activity_atos:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/atakmap/android/atos/utilities/RunnableManager;-><init>(Landroid/app/Activity;)V

    .line 12
    .line 13
    .line 14
    sget p1, Lcom/atakmap/android/atos/plugin/R$id;->frame_atos_activity_frag:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/toughstump/atos/activity/AtosActivity;->fragmentContainer:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/toughstump/atos/activity/AtosActivity;->checkPerm()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Lcom/toughstump/atos/activity/AtosActivity$onCreate$1;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/toughstump/atos/activity/AtosActivity$onCreate$1;-><init>(Lcom/toughstump/atos/activity/AtosActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p0, v0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->onDestroyActivity()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/toughstump/atos/activity/AtosActivity;->checkPerm()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
