.class final Lcom/toughstump/atos/dev/AtosDevKotReceiver$onKotReceived$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/dev/AtosDevKotReceiver;->onKotReceived(Lkot/KotEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $trackEvent:Lcom/toughstump/atos/kot/AtosKotEvent;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/kot/AtosKotEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/dev/AtosDevKotReceiver$onKotReceived$1;->$trackEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/toughstump/atos/track/AtosKotEventAggregator;->INSTANCE:Lcom/toughstump/atos/track/AtosKotEventAggregator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/dev/AtosDevKotReceiver$onKotReceived$1;->$trackEvent:Lcom/toughstump/atos/kot/AtosKotEvent;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/track/AtosKotEventAggregator;->updateKotEvent(Lcom/toughstump/atos/kot/AtosKotEvent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
