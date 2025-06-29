.class final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/atakmap/android/gui/ColorPalette$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->showColorPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $alert:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;->$alert:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onColorSelected(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$getTrack$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Lcom/atakmap/android/track/c;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$getPluginContext$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2, p1, v0}, Lcom/atakmap/android/track/c;->a(ILandroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$refresh(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$getTrackHandler$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$getTrack$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Lcom/atakmap/android/track/c;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/activity/ui/frag/track/map/AtosTrackDetailsMapProvider;->onTrackChanged(Lcom/atakmap/android/track/c;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showColorPicker$colorListener$1;->$alert:Landroid/app/AlertDialog;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
