.class public final synthetic Lkotlin/io/path/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Lkotlin/jvm/functions/Function3;

.field public final synthetic c:Ljava/nio/file/Path;

.field public final synthetic d:Ljava/nio/file/Path;

.field public final synthetic e:Ljava/nio/file/Path;

.field public final synthetic f:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/io/path/d;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/d;->b:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/d;->c:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/d;->e:Ljava/nio/file/Path;

    iput-object p6, p0, Lkotlin/io/path/d;->f:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lkotlin/io/path/d;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lkotlin/io/path/d;->b:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lkotlin/io/path/d;->c:Ljava/nio/file/Path;

    iget-object v3, p0, Lkotlin/io/path/d;->d:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/d;->e:Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/d;->f:Lkotlin/jvm/functions/Function3;

    move-object v6, p1

    check-cast v6, Ljava/nio/file/Path;

    move-object v7, p2

    check-cast v7, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-static/range {v0 .. v7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->e(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
