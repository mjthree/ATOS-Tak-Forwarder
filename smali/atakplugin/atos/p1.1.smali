.class public final synthetic Latakplugin/atos/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Ljava/nio/file/Path;)Ljava/util/stream/Stream;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/nio/file/Files;->lines(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
