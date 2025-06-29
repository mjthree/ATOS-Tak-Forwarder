.class public final synthetic Latakplugin/atos/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/atakmap/android/atos/service/CommandLinkManager;


# direct methods
.method public synthetic constructor <init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/v;->a:Lcom/atakmap/android/atos/service/CommandLinkManager;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Latakplugin/atos/v;->a:Lcom/atakmap/android/atos/service/CommandLinkManager;

    invoke-static {v0, p1, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->b(Lcom/atakmap/android/atos/service/CommandLinkManager;Landroid/content/DialogInterface;I)V

    return-void
.end method
