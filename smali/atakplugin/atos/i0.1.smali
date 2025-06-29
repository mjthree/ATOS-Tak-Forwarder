.class public final synthetic Latakplugin/atos/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/SafeStmtPtr$SafePtrLongFunction;


# instance fields
.field public final synthetic a:Lorg/sqlite/jdbc3/JDBC3ResultSet;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/sqlite/jdbc3/JDBC3ResultSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/i0;->a:Lorg/sqlite/jdbc3/JDBC3ResultSet;

    iput p2, p0, Latakplugin/atos/i0;->b:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/sqlite/core/DB;J)J
    .locals 2

    .line 1
    iget-object v0, p0, Latakplugin/atos/i0;->a:Lorg/sqlite/jdbc3/JDBC3ResultSet;

    iget v1, p0, Latakplugin/atos/i0;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->e(Lorg/sqlite/jdbc3/JDBC3ResultSet;ILorg/sqlite/core/DB;J)J

    move-result-wide p1

    return-wide p1
.end method
