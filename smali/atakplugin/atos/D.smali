.class public final synthetic Latakplugin/atos/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;


# instance fields
.field public final synthetic a:Lorg/sqlite/core/CorePreparedStatement;


# direct methods
.method public synthetic constructor <init>(Lorg/sqlite/core/CorePreparedStatement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/D;->a:Lorg/sqlite/core/CorePreparedStatement;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Latakplugin/atos/D;->a:Lorg/sqlite/core/CorePreparedStatement;

    invoke-static {v0}, Lorg/sqlite/core/CorePreparedStatement;->f(Lorg/sqlite/core/CorePreparedStatement;)[J

    move-result-object v0

    return-object v0
.end method
