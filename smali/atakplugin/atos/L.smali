.class public final synthetic Latakplugin/atos/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;


# instance fields
.field public final synthetic a:Lorg/sqlite/core/DB;

.field public final synthetic b:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/sqlite/core/DB;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/L;->a:Lorg/sqlite/core/DB;

    iput-object p2, p0, Latakplugin/atos/L;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run(Lorg/sqlite/core/DB;J)I
    .locals 2

    .line 1
    iget-object v0, p0, Latakplugin/atos/L;->a:Lorg/sqlite/core/DB;

    iget-object v1, p0, Latakplugin/atos/L;->b:[Ljava/lang/Object;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/sqlite/core/DB;->c(Lorg/sqlite/core/DB;[Ljava/lang/Object;Lorg/sqlite/core/DB;J)I

    move-result p1

    return p1
.end method
