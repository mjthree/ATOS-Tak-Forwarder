.class final Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onViewCreated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->access$toggleAllVisibleSendState(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
