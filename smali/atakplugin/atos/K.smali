.class public final synthetic Latakplugin/atos/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;


# instance fields
.field public final synthetic a:Lorg/sqlite/core/DB;

.field public final synthetic b:I

.field public final synthetic c:[Ljava/lang/Object;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lorg/sqlite/core/DB;I[Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/K;->a:Lorg/sqlite/core/DB;

    iput p2, p0, Latakplugin/atos/K;->b:I

    iput-object p3, p0, Latakplugin/atos/K;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Latakplugin/atos/K;->d:Z

    return-void
.end method


# virtual methods
.method public final run(Lorg/sqlite/core/DB;J)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Latakplugin/atos/K;->a:Lorg/sqlite/core/DB;

    iget v1, p0, Latakplugin/atos/K;->b:I

    iget-object v2, p0, Latakplugin/atos/K;->c:[Ljava/lang/Object;

    iget-boolean v3, p0, Latakplugin/atos/K;->d:Z

    move-object v4, p1

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lorg/sqlite/core/DB;->b(Lorg/sqlite/core/DB;I[Ljava/lang/Object;ZLorg/sqlite/core/DB;J)[J

    move-result-object p1

    return-object p1
.end method
