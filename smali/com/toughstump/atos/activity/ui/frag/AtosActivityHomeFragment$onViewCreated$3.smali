.class final Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$3;
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

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$3;->this$0:Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment$onViewCreated$3;->this$0:Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;

    .line 2
    .line 3
    const-string v0, "Support Coming Soon"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;->access$toast(Lcom/toughstump/atos/activity/ui/frag/AtosActivityHomeFragment;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
