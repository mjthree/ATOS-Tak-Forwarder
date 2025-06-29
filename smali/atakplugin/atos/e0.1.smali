.class public final synthetic Latakplugin/atos/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/sqlite/jdbc3/JDBC3Statement$SQLCallable;


# instance fields
.field public final synthetic a:Lorg/sqlite/jdbc3/JDBC3PreparedStatement;


# direct methods
.method public synthetic constructor <init>(Lorg/sqlite/jdbc3/JDBC3PreparedStatement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latakplugin/atos/e0;->a:Lorg/sqlite/jdbc3/JDBC3PreparedStatement;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Latakplugin/atos/e0;->a:Lorg/sqlite/jdbc3/JDBC3PreparedStatement;

    invoke-static {v0}, Lorg/sqlite/jdbc3/JDBC3PreparedStatement;->g(Lorg/sqlite/jdbc3/JDBC3PreparedStatement;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
