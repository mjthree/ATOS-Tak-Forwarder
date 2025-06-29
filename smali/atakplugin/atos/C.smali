.class public final synthetic Latakplugin/atos/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkot/net/functions/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkot/net/functions/Consumers;->a(Ljava/lang/Throwable;)V

    return-void
.end method
