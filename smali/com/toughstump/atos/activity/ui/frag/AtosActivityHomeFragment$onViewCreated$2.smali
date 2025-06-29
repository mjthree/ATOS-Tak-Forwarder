.class final Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$2;->this$0:Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$2;->this$0:Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->access$getParent$p(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;)Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityFragment;->showTrackHistoryFragment()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
