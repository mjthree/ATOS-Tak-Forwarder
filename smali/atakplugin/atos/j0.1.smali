.class public final synthetic Latakplugin/atos/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/SafeStmtPtr$SafePtrFunction;


# instance fields
.field public final synthetic a:Lorg/sqlite/jdbc3/JDBC3ResultSet;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/sqlite/jdbc3/JDBC3ResultSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/j0;->a:Lorg/sqlite/jdbc3/JDBC3ResultSet;

    iput p2, p0, Latakplugin/atos/j0;->b:I

    return-void
.end method


# virtual methods
.method public final run(Lorg/sqlite/core/DB;J)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Latakplugin/atos/j0;->a:Lorg/sqlite/jdbc3/JDBC3ResultSet;

    iget v1, p0, Latakplugin/atos/j0;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Lorg/sqlite/jdbc3/JDBC3ResultSet;->b(Lorg/sqlite/jdbc3/JDBC3ResultSet;ILorg/sqlite/core/DB;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
