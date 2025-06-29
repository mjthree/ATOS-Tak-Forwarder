.class public final synthetic Latakplugin/atos/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;


# instance fields
.field public final synthetic a:Lorg/sqlite/core/DB;


# direct methods
.method public synthetic constructor <init>(Lorg/sqlite/core/DB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/I;->a:Lorg/sqlite/core/DB;

    return-void
.end method


# virtual methods
.method public final run(Lorg/sqlite/core/DB;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Latakplugin/atos/I;->a:Lorg/sqlite/core/DB;

    invoke-static {v0, p1, p2, p3}, Lorg/sqlite/core/DB;->d(Lorg/sqlite/core/DB;Lorg/sqlite/core/DB;J)V

    return-void
.end method
