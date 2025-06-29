.class public final Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor$start$$inlined$schedule$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 RangeAndBearingProcessor.kt\ncom/toughstump/atos/atak/map/RangeAndBearingProcessor\n*L\n1#1,147:1\n52#2:148\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 RangeAndBearingProcessor.kt\ncom/toughstump/atos/atak/map/RangeAndBearingProcessor\n*L\n1#1,147:1\n52#2:148\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->INSTANCE:Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {v0}, Lcom/toughstump/atos/atak/map/RangeAndBearingProcessor;->access$setSnapEnabled$p(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
