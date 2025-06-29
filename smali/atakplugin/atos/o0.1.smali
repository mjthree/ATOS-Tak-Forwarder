.class public final synthetic Latakplugin/atos/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Latakplugin/atos/o0;->a:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/sqlite/core/DB;J)I
    .locals 1

    .line 1
    iget v0, p0, Latakplugin/atos/o0;->a:I

    invoke-static {v0, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->g(ILorg/sqlite/core/DB;J)I

    move-result p1

    return p1
.end method
