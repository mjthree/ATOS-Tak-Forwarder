.class public final synthetic Latakplugin/atos/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/event/EventHandler;


# instance fields
.field public final synthetic a:Lcom/atakmap/android/atos/service/CommandLinkManager;


# direct methods
.method public synthetic constructor <init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/x;->a:Lcom/atakmap/android/atos/service/CommandLinkManager;

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Latakplugin/atos/x;->a:Lcom/atakmap/android/atos/service/CommandLinkManager;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->a(Lcom/atakmap/android/atos/service/CommandLinkManager;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-void
.end method
