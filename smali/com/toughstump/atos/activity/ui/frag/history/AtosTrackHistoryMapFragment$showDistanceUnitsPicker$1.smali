.class final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showDistanceUnitsPicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->showDistanceUnitsPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showDistanceUnitsPicker$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showDistanceUnitsPicker$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$getPrefs$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "rab_rng_units_pref"

    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$showDistanceUnitsPicker$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;

    .line 28
    .line 29
    invoke-static {p2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->access$refresh(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 33
    .line 34
    .line 35
    return-void
.end method
