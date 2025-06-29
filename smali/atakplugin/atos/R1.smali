.class public final synthetic Latakplugin/atos/R1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/toughstump/event/EventHandler;


# instance fields
.field public final synthetic a:Lcom/atakmap/android/atos/plugin/TagTool;


# direct methods
.method public synthetic constructor <init>(Lcom/atakmap/android/atos/plugin/TagTool;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/R1;->a:Lcom/atakmap/android/atos/plugin/TagTool;

    return-void
.end method


# virtual methods
.method public final onNext(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Latakplugin/atos/R1;->a:Lcom/atakmap/android/atos/plugin/TagTool;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/atakmap/android/atos/plugin/TagTool;->a(Lcom/atakmap/android/atos/plugin/TagTool;Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method
