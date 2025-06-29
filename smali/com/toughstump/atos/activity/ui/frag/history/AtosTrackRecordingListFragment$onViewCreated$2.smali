.class final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackRecordingListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingListFragment.kt\ncom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1#2:205\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosTrackRecordingListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingListFragment.kt\ncom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1#2:205\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$2;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/toughstump/atos/history/TrackRecordingManager;->INSTANCE:Lcom/toughstump/atos/history/TrackRecordingManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/toughstump/atos/history/TrackRecordingManager;->getTrackRecordingDatabase()Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onViewCreated$2;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->showDetails(Lcom/toughstump/atos/history/AtosAndroidTrackRecordingDatabase;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
