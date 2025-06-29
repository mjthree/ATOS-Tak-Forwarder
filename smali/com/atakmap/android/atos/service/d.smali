.class public final synthetic Lcom/atakmap/android/atos/service/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/atakmap/android/atos/service/CommandLinkManager$3;


# direct methods
.method public synthetic constructor <init>(Lcom/atakmap/android/atos/service/CommandLinkManager$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atakmap/android/atos/service/d;->a:Lcom/atakmap/android/atos/service/CommandLinkManager$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/service/d;->a:Lcom/atakmap/android/atos/service/CommandLinkManager$3;

    invoke-static {v0}, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->b(Lcom/atakmap/android/atos/service/CommandLinkManager$3;)V

    return-void
.end method
