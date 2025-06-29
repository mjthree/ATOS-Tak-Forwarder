.class public final Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;
    }
.end annotation


# instance fields
.field private final callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dialogContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final manifest:Lcom/toughstump/atos/manifest/AtosManifest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;
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
    const-string v0, "dialogContext"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "manifest"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "callback"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->pluginContext:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->dialogContext:Landroid/content/Context;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifest()Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
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
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "Reset %s manifest"

    .line 27
    .line 28
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const-string v0, "format(...)"

    .line 33
    .line 34
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/atakmap/android/atos/utilities/RunnableManager;->toast(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->callback:Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;

    .line 41
    .line 42
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 43
    .line 44
    invoke-interface {p1, p2}, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog$ResetManifestInterface;->onResetManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final show()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->dialogContext:Landroid/content/Context;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "Reset"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Cancel"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/dialog/manifest/ResetManifestDialog;->manifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "Reset %s"

    .line 39
    .line 40
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "format(...)"

    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "Reset ATOS Mission"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 60
    .line 61
    .line 62
    return-void
.end method
