.class final Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$6;

    invoke-direct {v0}, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$6;-><init>()V

    sput-object v0, Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$6;->INSTANCE:Lcom/toughstump/atos/activity/ui/frag/history/AtosTrackHistoryMapFragment$onViewCreated$6;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/atakmap/android/ipc/AtakBroadcast;->a()Lcom/atakmap/android/ipc/AtakBroadcast;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lcom/atakmap/android/atos/ATOSDropDownReceiver;->getBackButtonIntent()Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/atakmap/android/ipc/AtakBroadcast;->a(Landroid/content/Intent;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method
