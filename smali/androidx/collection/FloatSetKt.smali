.class public final Landroidx/collection/FloatSetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatSet.kt\nandroidx/collection/FloatSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,853:1\n1#2:854\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFloatSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatSet.kt\nandroidx/collection/FloatSetKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,853:1\n1#2:854\n*E\n"
    }
.end annotation


# static fields
.field private static final EmptyFloatArray:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EmptyFloatSet:Landroidx/collection/MutableFloatSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatSet:Landroidx/collection/MutableFloatSet;

    .line 8
    .line 9
    new-array v0, v1, [F

    .line 10
    .line 11
    sput-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatArray:[F

    .line 12
    .line 13
    return-void
.end method

.method public static final emptyFloatSet()Landroidx/collection/FloatSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatSet:Landroidx/collection/MutableFloatSet;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final floatSetOf()Landroidx/collection/FloatSet;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatSet:Landroidx/collection/MutableFloatSet;

    return-object v0
.end method

.method public static final floatSetOf(F)Landroidx/collection/FloatSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-static {p0}, Landroidx/collection/FloatSetKt;->mutableFloatSetOf(F)Landroidx/collection/MutableFloatSet;

    move-result-object p0

    return-object p0
.end method

.method public static final floatSetOf(FF)Landroidx/collection/FloatSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    invoke-static {p0, p1}, Landroidx/collection/FloatSetKt;->mutableFloatSetOf(FF)Landroidx/collection/MutableFloatSet;

    move-result-object p0

    return-object p0
.end method

.method public static final floatSetOf(FFF)Landroidx/collection/FloatSet;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    invoke-static {p0, p1, p2}, Landroidx/collection/FloatSetKt;->mutableFloatSetOf(FFF)Landroidx/collection/MutableFloatSet;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs floatSetOf([F)Landroidx/collection/FloatSet;
    .locals 2
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroidx/collection/MutableFloatSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableFloatSet;->plusAssign([F)V

    return-object v0
.end method

.method public static final getEmptyFloatArray()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/FloatSetKt;->EmptyFloatArray:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public static final hash(F)I
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

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

.method public static final mutableFloatSetOf()Landroidx/collection/MutableFloatSet;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableFloatSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableFloatSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableFloatSetOf(F)Landroidx/collection/MutableFloatSet;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Landroidx/collection/MutableFloatSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    .line 3
    invoke-virtual {v0, p0}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    return-object v0
.end method

.method public static final mutableFloatSetOf(FF)Landroidx/collection/MutableFloatSet;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 4
    new-instance v0, Landroidx/collection/MutableFloatSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    .line 5
    invoke-virtual {v0, p0}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    .line 6
    invoke-virtual {v0, p1}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    return-object v0
.end method

.method public static final mutableFloatSetOf(FFF)Landroidx/collection/MutableFloatSet;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 7
    new-instance v0, Landroidx/collection/MutableFloatSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    .line 8
    invoke-virtual {v0, p0}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    .line 9
    invoke-virtual {v0, p1}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    .line 10
    invoke-virtual {v0, p2}, Landroidx/collection/MutableFloatSet;->plusAssign(F)V

    return-object v0
.end method

.method public static final varargs mutableFloatSetOf([F)Landroidx/collection/MutableFloatSet;
    .locals 2
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroidx/collection/MutableFloatSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableFloatSet;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableFloatSet;->plusAssign([F)V

    return-object v0
.end method
