.class final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->onTrackRecordingDatabaseUpdated(Ljava/lang/Object;Lkotlin/Unit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosTrackRecordingListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingListFragment.kt\ncom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1#2:205\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosTrackRecordingListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosTrackRecordingListFragment.kt\ncom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n1#2:205\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $summary:Lcom/toughstump/atos/record/db/RecordingSummary;

.field final synthetic this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/record/db/RecordingSummary;Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;->$summary:Lcom/toughstump/atos/record/db/RecordingSummary;

    iput-object p2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;->$summary:Lcom/toughstump/atos/record/db/RecordingSummary;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/RecordingSummary;->getStartTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->access$getFirstEventTextView$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string v0, "firstEventTextView"

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object v0, v1

    .line 24
    :cond_0
    invoke-static {v2, v3}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragmentKt;->formatDateNoYear(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;->$summary:Lcom/toughstump/atos/record/db/RecordingSummary;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/RecordingSummary;->getEndTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->access$getLastEventTextView$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    const-string v0, "lastEventTextView"

    .line 48
    .line 49
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object v0, v1

    .line 53
    :cond_2
    invoke-static {v2, v3}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragmentKt;->formatDateNoYear(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;->$summary:Lcom/toughstump/atos/record/db/RecordingSummary;

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/RecordingSummary;->getRecordCount()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 69
    .line 70
    invoke-static {v2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->access$getDataPointsNumberTextView$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroid/widget/TextView;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    const-string v2, "dataPointsNumberTextView"

    .line 77
    .line 78
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v2, v1

    .line 82
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    iget-object v0, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;->$summary:Lcom/toughstump/atos/record/db/RecordingSummary;

    .line 90
    .line 91
    if-eqz v0, :cond_7

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/toughstump/atos/record/db/RecordingSummary;->getUniqueTrackCount()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iget-object v2, p0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment$onTrackRecordingDatabaseUpdated$1;->this$0:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;

    .line 98
    .line 99
    invoke-static {v2}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;->access$getTrackNumberTextView$p(Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackRecordingListFragment;)Landroid/widget/TextView;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-nez v2, :cond_6

    .line 104
    .line 105
    const-string v2, "trackNumberTextView"

    .line 106
    .line 107
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    move-object v1, v2

    .line 112
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    :cond_7
    return-void
.end method
