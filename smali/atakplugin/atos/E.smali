.class public final synthetic Latakplugin/atos/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/LongToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(J)I
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/sqlite/core/CorePreparedStatement;->e(J)I

    move-result p1

    return p1
.end method
