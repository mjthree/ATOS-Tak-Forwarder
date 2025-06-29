.class final Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onConnectionStatusUpdated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->onConnectionStatusUpdated(Ljava/lang/Object;Lcom/toughstump/atos/service/CommandLinkStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onConnectionStatusUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment$onConnectionStatusUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;->access$updateConnectionStatus(Lcom/toughstump/atos/activity/ui/frag/toolbar/AtosToolbarFragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
