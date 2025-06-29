.class Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;
.super Landroid/content/MutableContextWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/toughstump/atos/activity/ui/spin/AtosSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextSensitiveContext"
.end annotation


# instance fields
.field final appContext:Landroid/content/Context;

.field final origContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getActivityContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;->appContext:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;->origContext:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public useAppContext(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;->appContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/spin/AtosSpinner$ContextSensitiveContext;->origContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
