.class public final synthetic Latakplugin/atos/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;


# instance fields
.field public final synthetic a:Lorg/sqlite/jdbc3/JDBC3Statement;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/sqlite/jdbc3/JDBC3Statement;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/t0;->a:Lorg/sqlite/jdbc3/JDBC3Statement;

    iput-object p2, p0, Latakplugin/atos/t0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Latakplugin/atos/t0;->a:Lorg/sqlite/jdbc3/JDBC3Statement;

    iget-object v1, p0, Latakplugin/atos/t0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/sqlite/jdbc3/JDBC3Statement;->c(Lorg/sqlite/jdbc3/JDBC3Statement;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
