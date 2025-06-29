.class public final Lkot/utils/model/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Image.kt\nkot/utils/model/ImageUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Extensions.kt\nkot/utils/Extensions\n*L\n1#1,197:1\n1#2:198\n6#3,8:199\n*S KotlinDebug\n*F\n+ 1 Image.kt\nkot/utils/model/ImageUtils\n*L\n130#1:199,8\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "ImageUtils"
.end annotation


# direct methods
.method public static final image(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;)Lkot/utils/model/Image;
    .locals 17
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v7, p6

    const-string v0, "base64Encoding"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mime"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid value for \'width\': must be at least 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid value for \'height\': must be at least 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    .line 3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid value for \'bands\': must be at least 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    if-eqz p4, :cond_7

    .line 4
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid value for \'size\': must be at least 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_7
    :goto_3
    sget-object v0, Lkot/utils/model/Image;->Companion:Lkot/utils/model/Image$Companion;

    invoke-virtual {v0}, Lkot/utils/model/Image$Companion;->getALLOWED_MIME_TYPES$utils()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide v2, 0x4076800000000000L    # 360.0

    const-wide/16 v4, 0x0

    if-eqz p10, :cond_9

    .line 6
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    cmpg-double v0, v4, v8

    if-gtz v0, :cond_8

    cmpg-double v0, v8, v2

    if-gtz v0, :cond_8

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid value for \'fov\': must be at least 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    if-eqz p13, :cond_b

    .line 7
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    cmpg-double v0, v4, v8

    if-gtz v0, :cond_a

    cmpg-double v0, v8, v2

    if-gtz v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid value for \'north\': must be at least 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_5
    if-eqz p14, :cond_d

    .line 8
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v2, v0

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_c

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid value for \'quality\': must be at least 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_d
    :goto_6
    new-instance v16, Lkot/utils/model/Image;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lkot/utils/model/Image;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;)V

    return-object v16

    .line 10
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for \'mime\': must be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkot/utils/model/Image$Companion;->getALLOWED_MIME_TYPES$utils()Ljava/util/List;

    move-result-object v0

    const/16 v2, 0x3e

    const/4 v3, 0x0

    const-string v4, ", "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 p0, v0

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move/from16 p7, v2

    move-object/from16 p8, v3

    invoke-static/range {p0 .. p8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic image$default(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;ILjava/lang/Object;)Lkot/utils/model/Image;
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v13, v2

    goto :goto_8

    :cond_8
    move-object/from16 v13, p10

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v14, v2

    goto :goto_9

    :cond_9
    move-object/from16 v14, p11

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object v15, v2

    goto :goto_a

    :cond_a
    move-object/from16 v15, p12

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v16, v2

    goto :goto_b

    :cond_b
    move-object/from16 v16, p13

    :goto_b
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_c

    move-object/from16 v17, v2

    goto :goto_c

    :cond_c
    move-object/from16 v17, p14

    :goto_c
    move-object/from16 v3, p0

    move-object/from16 v9, p6

    .line 1
    invoke-static/range {v3 .. v17}, Lkot/utils/model/ImageUtils;->image(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;)Lkot/utils/model/Image;

    move-result-object v0

    return-object v0
.end method

.method public static final imageDetail(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;)Lkot/KotDetail;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "base64Encoding"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mime"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static/range {p0 .. p14}, Lkot/utils/model/ImageUtils;->image(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;)Lkot/utils/model/Image;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lkot/utils/model/ImageUtils;->toKotDetail(Lkot/utils/model/Image;)Lkot/KotDetail;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static synthetic imageDetail$default(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;ILjava/lang/Object;)Lkot/KotDetail;
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v13, v2

    goto :goto_8

    :cond_8
    move-object/from16 v13, p10

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v14, v2

    goto :goto_9

    :cond_9
    move-object/from16 v14, p11

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object v15, v2

    goto :goto_a

    :cond_a
    move-object/from16 v15, p12

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v16, v2

    goto :goto_b

    :cond_b
    move-object/from16 v16, p13

    :goto_b
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_c

    move-object/from16 v17, v2

    goto :goto_c

    :cond_c
    move-object/from16 v17, p14

    :goto_c
    move-object/from16 v3, p0

    move-object/from16 v9, p6

    .line 1
    invoke-static/range {v3 .. v17}, Lkot/utils/model/ImageUtils;->imageDetail(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;)Lkot/KotDetail;

    move-result-object v0

    return-object v0
.end method

.method public static final imageFromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lkot/utils/model/Image;
    .locals 18
    .param p0    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "inputStream"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "mime"

    .line 9
    .line 10
    move-object/from16 v7, p1

    .line 11
    .line 12
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v3, 0x2

    .line 22
    const/4 v4, 0x0

    .line 23
    :try_start_0
    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {}, Latakplugin/atos/V;->a()Ljava/util/Base64$Encoder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1, v0}, Latakplugin/atos/W;->a(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    move-object v1, v2

    .line 45
    array-length v0, v0

    .line 46
    int-to-long v3, v0

    .line 47
    const-string v0, "base64Encoding"

    .line 48
    .line 49
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const/16 v16, 0x7fae

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    const/4 v9, 0x0

    .line 66
    const/4 v10, 0x0

    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v12, 0x0

    .line 69
    const/4 v13, 0x0

    .line 70
    const/4 v14, 0x0

    .line 71
    const/4 v15, 0x0

    .line 72
    move-object/from16 v7, p1

    .line 73
    .line 74
    invoke-static/range {v1 .. v17}, Lkot/utils/model/ImageUtils;->image$default(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;ILjava/lang/Object;)Lkot/utils/model/Image;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    move-object v2, v0

    .line 81
    goto :goto_0

    .line 82
    :catchall_1
    move-exception v0

    .line 83
    move-object v3, v0

    .line 84
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 85
    :catchall_2
    move-exception v0

    .line 86
    move-object v4, v0

    .line 87
    :try_start_3
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    :goto_0
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 92
    :catchall_3
    move-exception v0

    .line 93
    move-object v3, v0

    .line 94
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v3
.end method

.method public static final toImage(Lkot/KotDetail;)Lkot/utils/model/Image;
    .locals 20
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "image"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    const-string v1, "width"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x2

    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-static {v0, v1, v2, v3, v4}, Lkot/utils/KotUtils;->intAttributeOrNull$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const-string v1, "height"

    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3, v4}, Lkot/utils/KotUtils;->intAttributeOrNull$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const-string v1, "bands"

    .line 36
    .line 37
    invoke-static {v0, v1, v2, v3, v4}, Lkot/utils/KotUtils;->intAttributeOrNull$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    const-string v1, "size"

    .line 42
    .line 43
    invoke-static {v0, v1, v2, v3, v4}, Lkot/utils/KotUtils;->longAttributeOrNull$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    const-string v1, "resolution"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-virtual/range {p0 .. p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "mime"

    .line 58
    .line 59
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v11, v1

    .line 64
    check-cast v11, Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v11, :cond_1

    .line 67
    .line 68
    invoke-virtual/range {p0 .. p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v2, "type"

    .line 73
    .line 74
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    move-object v12, v1

    .line 79
    check-cast v12, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual/range {p0 .. p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, "source"

    .line 86
    .line 87
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    move-object v13, v1

    .line 92
    check-cast v13, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual/range {p0 .. p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v2, "url"

    .line 99
    .line 100
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    move-object v14, v1

    .line 105
    check-cast v14, Ljava/lang/String;

    .line 106
    .line 107
    const-string v1, "fov"

    .line 108
    .line 109
    invoke-static {v0, v1}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 110
    .line 111
    .line 112
    move-result-object v15

    .line 113
    invoke-virtual/range {p0 .. p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "analysis"

    .line 118
    .line 119
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Ljava/lang/String;

    .line 124
    .line 125
    if-eqz v1, :cond_0

    .line 126
    .line 127
    invoke-static {v1}, Lkotlin/text/StringsKt;->toBooleanStrictOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    :cond_0
    move-object/from16 v16, v4

    .line 132
    .line 133
    invoke-virtual/range {p0 .. p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v2, "reason"

    .line 138
    .line 139
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    move-object/from16 v17, v1

    .line 144
    .line 145
    check-cast v17, Ljava/lang/String;

    .line 146
    .line 147
    const-string v1, "north"

    .line 148
    .line 149
    invoke-static {v0, v1}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 150
    .line 151
    .line 152
    move-result-object v18

    .line 153
    const-string v1, "quality"

    .line 154
    .line 155
    invoke-static {v0, v1}, Lkot/utils/KotUtils;->floatAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Float;

    .line 156
    .line 157
    .line 158
    move-result-object v19

    .line 159
    invoke-virtual/range {p0 .. p0}, Lkot/KotDetail;->getText()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-instance v1, Lkotlin/text/Regex;

    .line 164
    .line 165
    const-string v2, "\\s"

    .line 166
    .line 167
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v2, ""

    .line 171
    .line 172
    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-static/range {v5 .. v19}, Lkot/utils/model/ImageUtils;->image(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;)Lkot/utils/model/Image;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    return-object v0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 182
    .line 183
    const-string v1, "Image mime must not be null"

    .line 184
    .line 185
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v2, "This detail does not represent a image detail ("

    .line 195
    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual/range {p0 .. p0}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v0, " != image)"

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v1
.end method

.method public static final toImageOrNull(Lkot/KotDetail;)Lkot/utils/model/Image;
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
    invoke-static {p0}, Lkot/utils/model/ImageUtils;->toImage(Lkot/KotDetail;)Lkot/utils/model/Image;

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

.method public static final toKotDetail(Lkot/utils/model/Image;)Lkot/KotDetail;
    .locals 17
    .param p0    # Lkot/utils/model/Image;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lkot/utils/model/ImageUtils$toKotDetail$attributes$1;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$1;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lkot/utils/model/ImageUtils$toKotDetail$attributes$2;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$2;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Lkot/utils/model/ImageUtils$toKotDetail$attributes$3;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$3;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Lkot/utils/model/ImageUtils$toKotDetail$attributes$4;

    .line 24
    .line 25
    invoke-direct {v4, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$4;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v5, Lkot/utils/model/ImageUtils$toKotDetail$attributes$5;

    .line 29
    .line 30
    invoke-direct {v5, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$5;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance v6, Lkot/utils/model/ImageUtils$toKotDetail$attributes$6;

    .line 34
    .line 35
    invoke-direct {v6, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$6;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v7, Lkot/utils/model/ImageUtils$toKotDetail$attributes$7;

    .line 39
    .line 40
    invoke-direct {v7, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$7;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance v8, Lkot/utils/model/ImageUtils$toKotDetail$attributes$8;

    .line 44
    .line 45
    invoke-direct {v8, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$8;-><init>(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v9, Lkot/utils/model/ImageUtils$toKotDetail$attributes$9;

    .line 49
    .line 50
    invoke-direct {v9, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$9;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v10, Lkot/utils/model/ImageUtils$toKotDetail$attributes$10;

    .line 54
    .line 55
    invoke-direct {v10, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$10;-><init>(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v11, Lkot/utils/model/ImageUtils$toKotDetail$attributes$11;

    .line 59
    .line 60
    invoke-direct {v11, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$11;-><init>(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v12, Lkot/utils/model/ImageUtils$toKotDetail$attributes$12;

    .line 64
    .line 65
    invoke-direct {v12, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$12;-><init>(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance v13, Lkot/utils/model/ImageUtils$toKotDetail$attributes$13;

    .line 69
    .line 70
    invoke-direct {v13, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$13;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance v14, Lkot/utils/model/ImageUtils$toKotDetail$attributes$14;

    .line 74
    .line 75
    invoke-direct {v14, v0}, Lkot/utils/model/ImageUtils$toKotDetail$attributes$14;-><init>(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    const/16 v15, 0xe

    .line 79
    .line 80
    new-array v15, v15, [Lkotlin/reflect/KProperty0;

    .line 81
    .line 82
    const/16 v16, 0x0

    .line 83
    .line 84
    aput-object v1, v15, v16

    .line 85
    .line 86
    const/4 v1, 0x1

    .line 87
    aput-object v2, v15, v1

    .line 88
    .line 89
    const/4 v1, 0x2

    .line 90
    aput-object v3, v15, v1

    .line 91
    .line 92
    const/4 v1, 0x3

    .line 93
    aput-object v4, v15, v1

    .line 94
    .line 95
    const/4 v1, 0x4

    .line 96
    aput-object v5, v15, v1

    .line 97
    .line 98
    const/4 v1, 0x5

    .line 99
    aput-object v6, v15, v1

    .line 100
    .line 101
    const/4 v1, 0x6

    .line 102
    aput-object v7, v15, v1

    .line 103
    .line 104
    const/4 v1, 0x7

    .line 105
    aput-object v8, v15, v1

    .line 106
    .line 107
    const/16 v1, 0x8

    .line 108
    .line 109
    aput-object v9, v15, v1

    .line 110
    .line 111
    const/16 v1, 0x9

    .line 112
    .line 113
    aput-object v10, v15, v1

    .line 114
    .line 115
    const/16 v1, 0xa

    .line 116
    .line 117
    aput-object v11, v15, v1

    .line 118
    .line 119
    const/16 v1, 0xb

    .line 120
    .line 121
    aput-object v12, v15, v1

    .line 122
    .line 123
    const/16 v1, 0xc

    .line 124
    .line 125
    aput-object v13, v15, v1

    .line 126
    .line 127
    const/16 v1, 0xd

    .line 128
    .line 129
    aput-object v14, v15, v1

    .line 130
    .line 131
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_2

    .line 148
    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Lkotlin/reflect/KProperty0;

    .line 154
    .line 155
    invoke-interface {v3}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-interface {v3}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-eqz v3, :cond_1

    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    goto :goto_1

    .line 170
    :cond_1
    const/4 v3, 0x0

    .line 171
    :goto_1
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    if-eqz v3, :cond_0

    .line 184
    .line 185
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_2
    invoke-static {v2}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    invoke-virtual/range {p0 .. p0}, Lkot/utils/model/Image;->getBase64Encoding()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    new-instance v0, Lkot/KotDetail;

    .line 198
    .line 199
    const/16 v10, 0x8

    .line 200
    .line 201
    const/4 v11, 0x0

    .line 202
    const-string v6, "image"

    .line 203
    .line 204
    const/4 v9, 0x0

    .line 205
    move-object v5, v0

    .line 206
    invoke-direct/range {v5 .. v11}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 207
    .line 208
    .line 209
    return-object v0
.end method
