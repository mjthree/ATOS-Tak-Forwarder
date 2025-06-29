.class public final Lcom/toughstump/atos/activity/AtosActivity$onCreate$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/AtosActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/AtosActivity;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/AtosActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/activity/AtosActivity$onCreate$1;->this$0:Lcom/toughstump/atos/activity/AtosActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    .line 1
    const-string v0, "AtosMainActivity"

    .line 2
    .line 3
    const-string v1, "Fragment back pressed invoked"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/toughstump/atos/activity/AtosActivity$onCreate$1;->this$0:Lcom/toughstump/atos/activity/AtosActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/toughstump/atos/activity/AtosActivity;->access$getActivityFragment$p(Lcom/toughstump/atos/activity/AtosActivity;)Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->handleBackButton()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/toughstump/atos/activity/AtosActivity$onCreate$1;->this$0:Lcom/toughstump/atos/activity/AtosActivity;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method
