.class public final synthetic Lkotlin/io/path/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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

    iput-object p1, p0, Lkotlin/io/path/c;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/c;->b:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/c;->c:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/c;->d:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/c;->e:Ljava/nio/file/Path;

    iput-object p6, p0, Lkotlin/io/path/c;->f:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lkotlin/io/path/c;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lkotlin/io/path/c;->b:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lkotlin/io/path/c;->c:Ljava/nio/file/Path;

    iget-object v3, p0, Lkotlin/io/path/c;->d:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/c;->e:Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/c;->f:Lkotlin/jvm/functions/Function3;

    move-object v6, p1

    check-cast v6, Lkotlin/io/path/FileVisitorBuilder;

    invoke-static/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->c(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Lkotlin/io/path/FileVisitorBuilder;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
