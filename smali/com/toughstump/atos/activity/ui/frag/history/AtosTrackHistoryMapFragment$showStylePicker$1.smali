.class final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->showStylePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $arrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;->$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$getTrack$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Lcom/atakmap/android/track/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;->$arrayAdapter:Landroid/widget/ArrayAdapter;

    .line 11
    .line 12
    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$getActivityContext$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p2, v1}, Lcom/atakmap/android/track/c;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 28
    .line 29
    invoke-static {p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$refresh(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$getTrackHandler$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 41
    .line 42
    invoke-static {p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$getTrackHandler$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showStylePicker$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$getTrack$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Lcom/atakmap/android/track/c;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;->onTrackChanged(Lcom/atakmap/android/track/c;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    .line 63
    .line 64
    return-void
.end method
