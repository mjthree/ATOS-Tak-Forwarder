.class public final synthetic Latakplugin/atos/S1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/S1;->a:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Latakplugin/atos/S1;->a:Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;

    invoke-static {v0}, Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;->b(Lcom/toughstump/atos/activity/ui/frag/track/map/TakRouteKotEvent;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
