.class final Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onTagCountUpdated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->onTagCountUpdated(Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $newTagCount:I

.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onTagCountUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    iput p2, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onTagCountUpdated$1;->$newTagCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onTagCountUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;->access$getTagCountTextView$p(Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackListFragment$onTagCountUpdated$1;->$newTagCount:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
