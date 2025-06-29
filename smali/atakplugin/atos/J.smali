.class public final synthetic Latakplugin/atos/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/SafeStmtPtr$SafePtrConsumer;


# instance fields
.field public final synthetic a:Lorg/sqlite/core/DB;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lorg/sqlite/core/DB;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/J;->a:Lorg/sqlite/core/DB;

    iput-wide p2, p0, Latakplugin/atos/J;->b:J

    return-void
.end method


# virtual methods
.method public final run(Lorg/sqlite/core/DB;J)V
    .locals 6

    .line 1
    iget-object v0, p0, Latakplugin/atos/J;->a:Lorg/sqlite/core/DB;

    iget-wide v1, p0, Latakplugin/atos/J;->b:J

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/sqlite/core/DB;->a(Lorg/sqlite/core/DB;JLorg/sqlite/core/DB;J)V

    return-void
.end method
