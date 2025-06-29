.class public Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;
.super Landroid/widget/Spinner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PluginSpinner"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;

    invoke-direct {v0, p1}, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 2
    new-instance v0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;

    invoke-direct {v0, p1}, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;

    invoke-direct {v0, p1}, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 4
    new-instance v0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;

    invoke-direct {v0, p1}, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 5
    new-instance v0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;

    invoke-direct {v0, p1}, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;->useAppContext(Z)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v1, v2}, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;->useAppContext(Z)V

    .line 23
    .line 24
    .line 25
    return v0
.end method
