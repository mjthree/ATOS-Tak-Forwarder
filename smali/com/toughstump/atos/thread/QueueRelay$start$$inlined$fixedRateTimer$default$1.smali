.class public final Lcom/toughstump/atos/thread/QueueRelay$start$$inlined$fixedRateTimer$default$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/thread/QueueRelay;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 QueueRelay.kt\ncom/toughstump/atos/thread/QueueRelay\n*L\n1#1,148:1\n21#2,2:149\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/thread/QueueRelay;


# direct methods
.method public constructor <init>(Lcom/toughstump/atos/thread/QueueRelay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/thread/QueueRelay$start$$inlined$fixedRateTimer$default$1;->this$0:Lcom/toughstump/atos/thread/QueueRelay;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/thread/QueueRelay$start$$inlined$fixedRateTimer$default$1;->this$0:Lcom/toughstump/atos/thread/QueueRelay;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/toughstump/atos/thread/QueueRelay;->access$bulkUpdate(Lcom/toughstump/atos/thread/QueueRelay;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
