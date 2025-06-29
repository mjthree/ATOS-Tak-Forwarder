.class public final synthetic Latakplugin/atos/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/core/SafeStmtPtr$SafePtrIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lorg/sqlite/core/DB;J)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Lorg/sqlite/core/DB;->column_count(J)I

    move-result p1

    return p1
.end method
