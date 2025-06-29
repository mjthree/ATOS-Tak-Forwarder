.class public final Lcom/toughstump/atos/activity/pref/prefactivity/PreferencesActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/pref/prefactivity/PreferencesActivity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/activity/pref/prefactivity/PreferencesActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PreferencesActivity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/activity/pref/prefactivity/PreferencesActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/activity/pref/prefactivity/PreferencesActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/activity/pref/prefactivity/PreferencesActivity;->Companion:Lcom/toughstump/atos/activity/pref/prefactivity/PreferencesActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->INSTANCE:Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->start()V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->INSTANCE:Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "getApplicationContext(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->start(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sget p1, Lcom/atakmap/android/atos/plugin/R$layout;->activity_settings:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget v0, Lcom/atakmap/android/atos/plugin/R$id;->settings_container:I

    .line 37
    .line 38
    new-instance v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPreferenceFragment;

    .line 39
    .line 40
    invoke-direct {v1}, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPreferenceFragment;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 48
    .line 49
    .line 50
    return-void
.end method
