.class public final Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;
.implements Lkotlin/jvm/internal/markers/KMutableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/MutableScatterMap$MutableMapWrapper;->getKeys()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TK;>;",
        "Lkotlin/jvm/internal/markers/KMutableSet;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1850:1\n363#2,6:1851\n373#2,3:1858\n376#2,9:1862\n363#2,6:1871\n373#2,3:1878\n376#2,9:1882\n633#2:1891\n634#2:1895\n636#2,2:1897\n638#2,4:1900\n642#2:1907\n643#2:1911\n644#2:1913\n645#2,4:1916\n651#2:1921\n652#2,8:1923\n1826#3:1857\n1688#3:1861\n1826#3:1877\n1688#3:1881\n1605#3,3:1892\n1619#3:1896\n1615#3:1899\n1795#3,3:1904\n1809#3,3:1908\n1733#3:1912\n1721#3:1914\n1715#3:1915\n1728#3:1920\n1818#3:1922\n1726#4,3:1931\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1\n*L\n1466#1:1851,6\n1466#1:1858,3\n1466#1:1862,9\n1477#1:1871,6\n1477#1:1878,3\n1477#1:1882,9\n1487#1:1891\n1487#1:1895\n1487#1:1897,2\n1487#1:1900,4\n1487#1:1907\n1487#1:1911\n1487#1:1913\n1487#1:1916,4\n1487#1:1921\n1487#1:1923,8\n1466#1:1857\n1466#1:1861\n1477#1:1877\n1477#1:1881\n1487#1:1892,3\n1487#1:1896\n1487#1:1899\n1487#1:1904,3\n1487#1:1908,3\n1487#1:1912\n1487#1:1914\n1487#1:1915\n1487#1:1920\n1487#1:1922\n1496#1:1931,3\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1850:1\n363#2,6:1851\n373#2,3:1858\n376#2,9:1862\n363#2,6:1871\n373#2,3:1878\n376#2,9:1882\n633#2:1891\n634#2:1895\n636#2,2:1897\n638#2,4:1900\n642#2:1907\n643#2:1911\n644#2:1913\n645#2,4:1916\n651#2:1921\n652#2,8:1923\n1826#3:1857\n1688#3:1861\n1826#3:1877\n1688#3:1881\n1605#3,3:1892\n1619#3:1896\n1615#3:1899\n1795#3,3:1904\n1809#3,3:1908\n1733#3:1912\n1721#3:1914\n1715#3:1915\n1728#3:1920\n1818#3:1922\n1726#4,3:1931\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1\n*L\n1466#1:1851,6\n1466#1:1858,3\n1466#1:1862,9\n1477#1:1871,6\n1477#1:1878,3\n1477#1:1882,9\n1487#1:1891\n1487#1:1895\n1487#1:1897,2\n1487#1:1900,4\n1487#1:1907\n1487#1:1911\n1487#1:1913\n1487#1:1916,4\n1487#1:1921\n1487#1:1923,8\n1466#1:1857\n1466#1:1861\n1477#1:1877\n1477#1:1881\n1487#1:1892,3\n1487#1:1896\n1487#1:1899\n1487#1:1904,3\n1487#1:1908,3\n1487#1:1912\n1487#1:1914\n1487#1:1915\n1487#1:1920\n1487#1:1922\n1496#1:1931,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/collection/MutableScatterMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TK;>;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/ScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroidx/collection/ScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    :cond_2
    :goto_0
    return v2
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    iget v0, v0, Landroidx/collection/ScatterMap;->_size:I

    .line 4
    .line 5
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/collection/ScatterMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1$iterator$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1$iterator$1;-><init>(Landroidx/collection/MutableScatterMap;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v4, 0x0

    .line 15
    :goto_0
    const v5, -0x3361d2af    # -8.2930312E7f

    .line 16
    .line 17
    .line 18
    mul-int/2addr v4, v5

    .line 19
    shl-int/lit8 v5, v4, 0x10

    .line 20
    .line 21
    xor-int/2addr v4, v5

    .line 22
    and-int/lit8 v5, v4, 0x7f

    .line 23
    .line 24
    iget v6, v2, Landroidx/collection/ScatterMap;->_capacity:I

    .line 25
    .line 26
    ushr-int/lit8 v4, v4, 0x7

    .line 27
    .line 28
    and-int/2addr v4, v6

    .line 29
    const/4 v7, 0x0

    .line 30
    :goto_1
    iget-object v8, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 31
    .line 32
    shr-int/lit8 v9, v4, 0x3

    .line 33
    .line 34
    and-int/lit8 v10, v4, 0x7

    .line 35
    .line 36
    shl-int/lit8 v10, v10, 0x3

    .line 37
    .line 38
    aget-wide v11, v8, v9

    .line 39
    .line 40
    ushr-long/2addr v11, v10

    .line 41
    const/4 v13, 0x1

    .line 42
    add-int/2addr v9, v13

    .line 43
    aget-wide v14, v8, v9

    .line 44
    .line 45
    rsub-int/lit8 v8, v10, 0x40

    .line 46
    .line 47
    shl-long v8, v14, v8

    .line 48
    .line 49
    int-to-long v14, v10

    .line 50
    neg-long v14, v14

    .line 51
    const/16 v10, 0x3f

    .line 52
    .line 53
    shr-long/2addr v14, v10

    .line 54
    and-long/2addr v8, v14

    .line 55
    or-long/2addr v8, v11

    .line 56
    int-to-long v10, v5

    .line 57
    const-wide v14, 0x101010101010101L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    mul-long/2addr v10, v14

    .line 63
    xor-long/2addr v10, v8

    .line 64
    sub-long v14, v10, v14

    .line 65
    .line 66
    not-long v10, v10

    .line 67
    and-long/2addr v10, v14

    .line 68
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    and-long/2addr v10, v14

    .line 74
    :goto_2
    const-wide/16 v16, 0x0

    .line 75
    .line 76
    cmp-long v12, v10, v16

    .line 77
    .line 78
    if-eqz v12, :cond_2

    .line 79
    .line 80
    invoke-static {v10, v11}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    shr-int/lit8 v12, v12, 0x3

    .line 85
    .line 86
    add-int/2addr v12, v4

    .line 87
    and-int/2addr v12, v6

    .line 88
    iget-object v3, v2, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 89
    .line 90
    aget-object v3, v3, v12

    .line 91
    .line 92
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_1
    const-wide/16 v16, 0x1

    .line 100
    .line 101
    sub-long v16, v10, v16

    .line 102
    .line 103
    and-long v10, v10, v16

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    not-long v10, v8

    .line 107
    const/4 v3, 0x6

    .line 108
    shl-long/2addr v10, v3

    .line 109
    and-long/2addr v8, v10

    .line 110
    and-long/2addr v8, v14

    .line 111
    cmp-long v3, v8, v16

    .line 112
    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    const/4 v12, -0x1

    .line 116
    :goto_3
    if-ltz v12, :cond_3

    .line 117
    .line 118
    iget-object v1, v0, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 119
    .line 120
    invoke-virtual {v1, v12}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    return v13

    .line 124
    :cond_3
    const/4 v3, 0x0

    .line 125
    return v3

    .line 126
    :cond_4
    const/4 v3, 0x0

    .line 127
    add-int/lit8 v7, v7, 0x8

    .line 128
    .line 129
    add-int/2addr v4, v7

    .line 130
    and-int/2addr v4, v6

    .line 131
    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 17
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "elements"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p0

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 11
    .line 12
    iget-object v3, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    add-int/lit8 v4, v4, -0x2

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-ltz v4, :cond_4

    .line 19
    .line 20
    move v6, v5

    .line 21
    move v7, v6

    .line 22
    :goto_0
    aget-wide v8, v3, v6

    .line 23
    .line 24
    not-long v10, v8

    .line 25
    const/4 v12, 0x7

    .line 26
    shl-long/2addr v10, v12

    .line 27
    and-long/2addr v10, v8

    .line 28
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v10, v12

    .line 34
    cmp-long v10, v10, v12

    .line 35
    .line 36
    if-eqz v10, :cond_2

    .line 37
    .line 38
    sub-int v10, v6, v4

    .line 39
    .line 40
    not-int v10, v10

    .line 41
    ushr-int/lit8 v10, v10, 0x1f

    .line 42
    .line 43
    const/16 v11, 0x8

    .line 44
    .line 45
    rsub-int/lit8 v10, v10, 0x8

    .line 46
    .line 47
    move v12, v5

    .line 48
    :goto_1
    if-ge v12, v10, :cond_1

    .line 49
    .line 50
    const-wide/16 v13, 0xff

    .line 51
    .line 52
    and-long/2addr v13, v8

    .line 53
    const-wide/16 v15, 0x80

    .line 54
    .line 55
    cmp-long v13, v13, v15

    .line 56
    .line 57
    if-gez v13, :cond_0

    .line 58
    .line 59
    shl-int/lit8 v13, v6, 0x3

    .line 60
    .line 61
    add-int/2addr v13, v12

    .line 62
    iget-object v14, v2, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 63
    .line 64
    aget-object v14, v14, v13

    .line 65
    .line 66
    invoke-static {v0, v14}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    if-eqz v14, :cond_0

    .line 71
    .line 72
    invoke-virtual {v2, v13}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    :cond_0
    shr-long/2addr v8, v11

    .line 77
    add-int/lit8 v12, v12, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    if-ne v10, v11, :cond_5

    .line 81
    .line 82
    :cond_2
    if-eq v6, v4, :cond_3

    .line 83
    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move v5, v7

    .line 88
    :cond_4
    move v7, v5

    .line 89
    :cond_5
    return v7
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 17
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "elements"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p0

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->this$0:Landroidx/collection/MutableScatterMap;

    .line 11
    .line 12
    iget-object v3, v2, Landroidx/collection/ScatterMap;->metadata:[J

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    add-int/lit8 v4, v4, -0x2

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-ltz v4, :cond_4

    .line 19
    .line 20
    move v6, v5

    .line 21
    move v7, v6

    .line 22
    :goto_0
    aget-wide v8, v3, v6

    .line 23
    .line 24
    not-long v10, v8

    .line 25
    const/4 v12, 0x7

    .line 26
    shl-long/2addr v10, v12

    .line 27
    and-long/2addr v10, v8

    .line 28
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    and-long/2addr v10, v12

    .line 34
    cmp-long v10, v10, v12

    .line 35
    .line 36
    if-eqz v10, :cond_2

    .line 37
    .line 38
    sub-int v10, v6, v4

    .line 39
    .line 40
    not-int v10, v10

    .line 41
    ushr-int/lit8 v10, v10, 0x1f

    .line 42
    .line 43
    const/16 v11, 0x8

    .line 44
    .line 45
    rsub-int/lit8 v10, v10, 0x8

    .line 46
    .line 47
    move v12, v5

    .line 48
    :goto_1
    if-ge v12, v10, :cond_1

    .line 49
    .line 50
    const-wide/16 v13, 0xff

    .line 51
    .line 52
    and-long/2addr v13, v8

    .line 53
    const-wide/16 v15, 0x80

    .line 54
    .line 55
    cmp-long v13, v13, v15

    .line 56
    .line 57
    if-gez v13, :cond_0

    .line 58
    .line 59
    shl-int/lit8 v13, v6, 0x3

    .line 60
    .line 61
    add-int/2addr v13, v12

    .line 62
    iget-object v14, v2, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 63
    .line 64
    aget-object v14, v14, v13

    .line 65
    .line 66
    invoke-static {v0, v14}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    if-nez v14, :cond_0

    .line 71
    .line 72
    invoke-virtual {v2, v13}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    :cond_0
    shr-long/2addr v8, v11

    .line 77
    add-int/lit8 v12, v12, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    if-ne v10, v11, :cond_5

    .line 81
    .line 82
    :cond_2
    if-eq v6, v4, :cond_3

    .line 83
    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move v5, v7

    .line 88
    :cond_4
    move v7, v5

    .line 89
    :cond_5
    return v7
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap$MutableMapWrapper$keys$1;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2
    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
