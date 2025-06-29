.class public final Landroidx/collection/IntSetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntSet.kt\nandroidx/collection/IntSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,853:1\n1#2:854\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIntSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntSet.kt\nandroidx/collection/IntSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,853:1\n1#2:854\n*E\n"
    }
.end annotation


# static fields
.field private static final EmptyIntArray:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EmptyIntSet:Landroidx/collection/MutableIntSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableIntSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableIntSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/IntSetKt;->EmptyIntSet:Landroidx/collection/MutableIntSet;

    .line 8
    .line 9
    new-array v0, v1, [I

    .line 10
    .line 11
    sput-object v0, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    .line 12
    .line 13
    return-void
.end method

.method public static final emptyIntSet()Landroidx/collection/IntSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/IntSetKt;->EmptyIntSet:Landroidx/collection/MutableIntSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getEmptyIntArray()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public static final hash(I)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const v0, -0x3361d2af    # -8.2930312E7f

    .line 6
    .line 7
    .line 8
    mul-int/2addr p0, v0

    .line 9
    shl-int/lit8 v0, p0, 0x10

    .line 10
    .line 11
    xor-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public static final intSetOf()Landroidx/collection/IntSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/IntSetKt;->EmptyIntSet:Landroidx/collection/MutableIntSet;

    return-object v0
.end method

.method public static final intSetOf(I)Landroidx/collection/IntSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {p0}, Landroidx/collection/IntSetKt;->mutableIntSetOf(I)Landroidx/collection/MutableIntSet;

    move-result-object p0

    return-object p0
.end method

.method public static final intSetOf(II)Landroidx/collection/IntSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    invoke-static {p0, p1}, Landroidx/collection/IntSetKt;->mutableIntSetOf(II)Landroidx/collection/MutableIntSet;

    move-result-object p0

    return-object p0
.end method

.method public static final intSetOf(III)Landroidx/collection/IntSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    invoke-static {p0, p1, p2}, Landroidx/collection/IntSetKt;->mutableIntSetOf(III)Landroidx/collection/MutableIntSet;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs intSetOf([I)Landroidx/collection/IntSet;
    .locals 2
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroidx/collection/MutableIntSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableIntSet;->plusAssign([I)V

    return-object v0
.end method

.method public static final mutableIntSetOf()Landroidx/collection/MutableIntSet;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableIntSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableIntSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableIntSetOf(I)Landroidx/collection/MutableIntSet;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableIntSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntSet;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Landroidx/collection/MutableIntSet;->plusAssign(I)V

    return-object v0
.end method

.method public static final mutableIntSetOf(II)Landroidx/collection/MutableIntSet;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    new-instance v0, Landroidx/collection/MutableIntSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntSet;-><init>(I)V

    .line 5
    invoke-virtual {v0, p0}, Landroidx/collection/MutableIntSet;->plusAssign(I)V

    .line 6
    invoke-virtual {v0, p1}, Landroidx/collection/MutableIntSet;->plusAssign(I)V

    return-object v0
.end method

.method public static final mutableIntSetOf(III)Landroidx/collection/MutableIntSet;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    new-instance v0, Landroidx/collection/MutableIntSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntSet;-><init>(I)V

    .line 8
    invoke-virtual {v0, p0}, Landroidx/collection/MutableIntSet;->plusAssign(I)V

    .line 9
    invoke-virtual {v0, p1}, Landroidx/collection/MutableIntSet;->plusAssign(I)V

    .line 10
    invoke-virtual {v0, p2}, Landroidx/collection/MutableIntSet;->plusAssign(I)V

    return-object v0
.end method

.method public static final varargs mutableIntSetOf([I)Landroidx/collection/MutableIntSet;
    .locals 2
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroidx/collection/MutableIntSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableIntSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableIntSet;->plusAssign([I)V

    return-object v0
.end method
