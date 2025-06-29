.class public final Lkot/utils/model/LinkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Link.kt\nkot/utils/model/LinkUtils\n+ 2 Extensions.kt\nkot/utils/Extensions\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n6#2,3:116\n9#2,5:120\n1#3:119\n*S KotlinDebug\n*F\n+ 1 Link.kt\nkot/utils/model/LinkUtils\n*L\n72#1:116,3\n72#1:120,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "LinkUtils"
.end annotation


# direct methods
.method public static final link(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;)Lkot/utils/model/Link;
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "relation"

    .line 2
    .line 3
    move-object v2, p0

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "uid"

    .line 8
    .line 9
    move-object v3, p1

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "type"

    .line 14
    .line 15
    move-object v4, p2

    .line 16
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lkot/utils/model/Link;

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    move-object v5, p3

    .line 23
    move-object v6, p4

    .line 24
    move-object v7, p5

    .line 25
    move-object/from16 v8, p6

    .line 26
    .line 27
    move-object/from16 v9, p7

    .line 28
    .line 29
    invoke-direct/range {v1 .. v9}, Lkot/utils/model/Link;-><init>(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static synthetic link$default(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;ILjava/lang/Object;)Lkot/utils/model/Link;
    .locals 11

    .line 1
    move/from16 v0, p8

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v6, p3

    .line 11
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object v7, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v7, p4

    .line 18
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    move-object v8, v2

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move-object/from16 v8, p5

    .line 25
    .line 26
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    move-object v9, v2

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move-object/from16 v9, p6

    .line 33
    .line 34
    :goto_3
    and-int/lit16 v0, v0, 0x80

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    move-object v10, v2

    .line 39
    goto :goto_4

    .line 40
    :cond_4
    move-object/from16 v10, p7

    .line 41
    .line 42
    :goto_4
    move-object v3, p0

    .line 43
    move-object v4, p1

    .line 44
    move-object v5, p2

    .line 45
    invoke-static/range {v3 .. v10}, Lkot/utils/model/LinkUtils;->link(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;)Lkot/utils/model/Link;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public static final linkDetail(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;)Lkot/KotDetail;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkot/KotTime;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "relation"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "uid"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "type"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static/range {p0 .. p7}, Lkot/utils/model/LinkUtils;->link(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;)Lkot/utils/model/Link;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lkot/utils/model/LinkUtils;->toKotDetail(Lkot/utils/model/Link;)Lkot/KotDetail;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static synthetic linkDetail$default(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;ILjava/lang/Object;)Lkot/KotDetail;
    .locals 11

    .line 1
    move/from16 v0, p8

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v6, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v6, p3

    .line 11
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object v7, v2

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-object v7, p4

    .line 18
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    move-object v8, v2

    .line 23
    goto :goto_2

    .line 24
    :cond_2
    move-object/from16 v8, p5

    .line 25
    .line 26
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    move-object v9, v2

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move-object/from16 v9, p6

    .line 33
    .line 34
    :goto_3
    and-int/lit16 v0, v0, 0x80

    .line 35
    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    move-object v10, v2

    .line 39
    goto :goto_4

    .line 40
    :cond_4
    move-object/from16 v10, p7

    .line 41
    .line 42
    :goto_4
    move-object v3, p0

    .line 43
    move-object v4, p1

    .line 44
    move-object v5, p2

    .line 45
    invoke-static/range {v3 .. v10}, Lkot/utils/model/LinkUtils;->linkDetail(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;)Lkot/KotDetail;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public static final toKotDetail(Lkot/utils/model/Link;)Lkot/KotDetail;
    .locals 8
    .param p0    # Lkot/utils/model/Link;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkot/utils/model/LinkUtils$toKotDetail$attributes$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lkot/utils/model/LinkUtils$toKotDetail$attributes$1;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lkot/utils/model/LinkUtils$toKotDetail$attributes$2;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lkot/utils/model/LinkUtils$toKotDetail$attributes$2;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lkot/utils/model/LinkUtils$toKotDetail$attributes$3;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lkot/utils/model/LinkUtils$toKotDetail$attributes$3;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lkot/utils/model/LinkUtils$toKotDetail$attributes$4;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lkot/utils/model/LinkUtils$toKotDetail$attributes$4;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lkot/utils/model/LinkUtils$toKotDetail$attributes$5;

    .line 27
    .line 28
    invoke-direct {v4, p0}, Lkot/utils/model/LinkUtils$toKotDetail$attributes$5;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lkot/utils/model/LinkUtils$toKotDetail$attributes$6;

    .line 32
    .line 33
    invoke-direct {v5, p0}, Lkot/utils/model/LinkUtils$toKotDetail$attributes$6;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v6, 0x6

    .line 37
    new-array v6, v6, [Lkotlin/reflect/KProperty0;

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    aput-object v0, v6, v7

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    aput-object v1, v6, v0

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    aput-object v2, v6, v0

    .line 47
    .line 48
    const/4 v0, 0x3

    .line 49
    aput-object v3, v6, v0

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    aput-object v4, v6, v0

    .line 53
    .line 54
    const/4 v0, 0x5

    .line 55
    aput-object v5, v6, v0

    .line 56
    .line 57
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Lkotlin/reflect/KProperty0;

    .line 80
    .line 81
    invoke-interface {v2}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-interface {v2}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_1

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const/4 v2, 0x0

    .line 97
    :goto_1
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_0

    .line 110
    .line 111
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    invoke-static {v1}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {p0}, Lkot/utils/model/Link;->getParentCallsign()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    const-string v1, "parent_callsign"

    .line 130
    .line 131
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    :cond_3
    invoke-virtual {p0}, Lkot/utils/model/Link;->getProductionTime()Lkot/KotTime;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    if-eqz p0, :cond_4

    .line 139
    .line 140
    const-string v0, "production_time"

    .line 141
    .line 142
    invoke-virtual {p0}, Lkot/KotTime;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-interface {v4, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    :cond_4
    new-instance p0, Lkot/KotDetail;

    .line 150
    .line 151
    const/16 v6, 0xa

    .line 152
    .line 153
    const/4 v7, 0x0

    .line 154
    const-string v2, "link"

    .line 155
    .line 156
    const/4 v3, 0x0

    .line 157
    const/4 v5, 0x0

    .line 158
    move-object v1, p0

    .line 159
    invoke-direct/range {v1 .. v7}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 160
    .line 161
    .line 162
    return-object p0
.end method

.method public static final toLink(Lkot/KotDetail;)Lkot/utils/model/Link;
    .locals 10
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "link"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "relation"

    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "uid"

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v3, v0

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "type"

    .line 53
    .line 54
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v5, v0

    .line 59
    check-cast v5, Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    new-instance v0, Lkot/KotType;

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    move-object v4, v0

    .line 70
    invoke-direct/range {v4 .. v9}, Lkot/KotType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const-string v4, "url"

    .line 78
    .line 79
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    move-object v5, v1

    .line 84
    check-cast v5, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v4, "remarks"

    .line 91
    .line 92
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    move-object v6, v1

    .line 97
    check-cast v6, Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v4, "mime"

    .line 104
    .line 105
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    move-object v7, v1

    .line 110
    check-cast v7, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v4, "parent_callsign"

    .line 117
    .line 118
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    move-object v8, v1

    .line 123
    check-cast v8, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-string v1, "production_time"

    .line 130
    .line 131
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Ljava/lang/String;

    .line 136
    .line 137
    if-eqz p0, :cond_0

    .line 138
    .line 139
    sget-object v1, Lkot/KotTime;->Companion:Lkot/KotTime$Companion;

    .line 140
    .line 141
    invoke-virtual {v1, p0}, Lkot/KotTime$Companion;->parse(Ljava/lang/String;)Lkot/KotTime;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    :goto_0
    move-object v9, p0

    .line 146
    goto :goto_1

    .line 147
    :cond_0
    const/4 p0, 0x0

    .line 148
    goto :goto_0

    .line 149
    :goto_1
    new-instance p0, Lkot/utils/model/Link;

    .line 150
    .line 151
    move-object v1, p0

    .line 152
    move-object v4, v0

    .line 153
    invoke-direct/range {v1 .. v9}, Lkot/utils/model/Link;-><init>(Ljava/lang/String;Ljava/lang/String;Lkot/KotType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkot/KotTime;)V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 158
    .line 159
    const-string v0, "Detail is missing \'type\'"

    .line 160
    .line 161
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw p0

    .line 165
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 166
    .line 167
    const-string v0, "Detail is missing \'uid\'"

    .line 168
    .line 169
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p0

    .line 173
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 174
    .line 175
    const-string v0, "Detail is missing \'relation\'"

    .line 176
    .line 177
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v1, "This detail does not represent a link detail ("

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string p0, " != link)"

    .line 199
    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 208
    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0
.end method

.method public static final toLinkOrNull(Lkot/KotDetail;)Lkot/utils/model/Link;
    .locals 1
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Lkot/utils/model/LinkUtils;->toLink(Lkot/KotDetail;)Lkot/utils/model/Link;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return-object p0
.end method
