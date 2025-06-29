.class public final Lkot/utils/model/SensorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSensor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sensor.kt\nkot/utils/model/SensorUtils\n+ 2 Extensions.kt\nkot/utils/Extensions\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n6#2,3:188\n9#2,5:192\n1#3:191\n*S KotlinDebug\n*F\n+ 1 Sensor.kt\nkot/utils/model/SensorUtils\n*L\n137#1:188,3\n137#1:192,5\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "SensorUtils"
.end annotation


# direct methods
.method public static final getFov(Lkot/utils/model/Sensor;)Ljava/lang/Double;
    .locals 1
    .param p0    # Lkot/utils/model/Sensor;
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
    invoke-virtual {p0}, Lkot/utils/model/Sensor;->getFieldOfView()Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final getVfov(Lkot/utils/model/Sensor;)Ljava/lang/Double;
    .locals 1
    .param p0    # Lkot/utils/model/Sensor;
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
    invoke-virtual {p0}, Lkot/utils/model/Sensor;->getVerticalFieldOfView()Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final sensor(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lkot/KotType;Ljava/lang/String;Ljava/lang/Double;)Lkot/utils/model/Sensor;
    .locals 12
    .param p0    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2
    sget-object v2, Lkot/utils/model/Sensor;->Companion:Lkot/utils/model/Sensor$Companion;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_CIRCLE_ANGLE$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for \'azimuth\': must be in the range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_CIRCLE_ANGLE$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 6
    sget-object v2, Lkot/utils/model/Sensor;->Companion:Lkot/utils/model/Sensor$Companion;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_VERTICAL_TILT$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for \'elevation\': must be in the range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_VERTICAL_TILT$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 10
    sget-object v2, Lkot/utils/model/Sensor;->Companion:Lkot/utils/model/Sensor$Companion;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_ROLL$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for \'roll\': must be in the range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_ROLL$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    if-eqz p3, :cond_7

    .line 13
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 14
    sget-object v2, Lkot/utils/model/Sensor;->Companion:Lkot/utils/model/Sensor$Companion;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_CIRCLE_ANGLE$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for \'fov\': must be in the range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_CIRCLE_ANGLE$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_3
    if-eqz p4, :cond_9

    .line 17
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 18
    sget-object v2, Lkot/utils/model/Sensor;->Companion:Lkot/utils/model/Sensor$Companion;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_CIRCLE_ANGLE$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 19
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for \'vfov\': must be in the range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_CIRCLE_ANGLE$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_4
    if-eqz p5, :cond_b

    .line 21
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 22
    sget-object v2, Lkot/utils/model/Sensor;->Companion:Lkot/utils/model/Sensor$Companion;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_CIRCLE_ANGLE$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v3, v0}, Lkotlin/ranges/ClosedFloatingPointRange;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    .line 23
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value for \'north\': must be in the range "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkot/utils/model/Sensor$Companion;->getVALID_RANGE_CIRCLE_ANGLE$utils()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :goto_5
    if-eqz p8, :cond_d

    .line 25
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_c

    goto :goto_6

    .line 26
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid value for \'range\': must be at least 0m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_d
    :goto_6
    new-instance v0, Lkot/utils/model/Sensor;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lkot/utils/model/Sensor;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lkot/KotType;Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method public static synthetic sensor$default(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lkot/KotType;Ljava/lang/String;Ljava/lang/Double;ILjava/lang/Object;)Lkot/utils/model/Sensor;
    .locals 1

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p0, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move-object p1, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move-object p2, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move-object p3, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move-object p4, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move-object p5, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    move-object p6, v0

    :cond_6
    and-int/lit16 p10, p9, 0x80

    if-eqz p10, :cond_7

    move-object p7, v0

    :cond_7
    and-int/lit16 p9, p9, 0x100

    if-eqz p9, :cond_8

    move-object p8, v0

    .line 1
    :cond_8
    invoke-static/range {p0 .. p8}, Lkot/utils/model/SensorUtils;->sensor(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lkot/KotType;Ljava/lang/String;Ljava/lang/Double;)Lkot/utils/model/Sensor;

    move-result-object p0

    return-object p0
.end method

.method public static final sensorDetail(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lkot/KotType;Ljava/lang/String;Ljava/lang/Double;)Lkot/KotDetail;
    .locals 0
    .param p0    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkot/KotType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static/range {p0 .. p8}, Lkot/utils/model/SensorUtils;->sensor(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lkot/KotType;Ljava/lang/String;Ljava/lang/Double;)Lkot/utils/model/Sensor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkot/utils/model/SensorUtils;->toKotDetail(Lkot/utils/model/Sensor;)Lkot/KotDetail;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static synthetic sensorDetail$default(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lkot/KotType;Ljava/lang/String;Ljava/lang/Double;ILjava/lang/Object;)Lkot/KotDetail;
    .locals 1

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p0, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move-object p1, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move-object p2, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move-object p3, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move-object p4, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    if-eqz p10, :cond_5

    move-object p5, v0

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    move-object p6, v0

    :cond_6
    and-int/lit16 p10, p9, 0x80

    if-eqz p10, :cond_7

    move-object p7, v0

    :cond_7
    and-int/lit16 p9, p9, 0x100

    if-eqz p9, :cond_8

    move-object p8, v0

    .line 1
    :cond_8
    invoke-static/range {p0 .. p8}, Lkot/utils/model/SensorUtils;->sensorDetail(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lkot/KotType;Ljava/lang/String;Ljava/lang/Double;)Lkot/KotDetail;

    move-result-object p0

    return-object p0
.end method

.method public static final toKotDetail(Lkot/utils/model/Sensor;)Lkot/KotDetail;
    .locals 10
    .param p0    # Lkot/utils/model/Sensor;
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
    new-instance v0, Lkot/utils/model/SensorUtils$toKotDetail$attributes$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lkot/utils/model/SensorUtils$toKotDetail$attributes$1;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lkot/utils/model/SensorUtils$toKotDetail$attributes$2;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lkot/utils/model/SensorUtils$toKotDetail$attributes$2;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lkot/utils/model/SensorUtils$toKotDetail$attributes$3;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lkot/utils/model/SensorUtils$toKotDetail$attributes$3;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Lkot/utils/model/SensorUtils$toKotDetail$attributes$4;

    .line 22
    .line 23
    invoke-direct {v3, p0}, Lkot/utils/model/SensorUtils$toKotDetail$attributes$4;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    new-instance v4, Lkot/utils/model/SensorUtils$toKotDetail$attributes$5;

    .line 27
    .line 28
    invoke-direct {v4, p0}, Lkot/utils/model/SensorUtils$toKotDetail$attributes$5;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lkot/utils/model/SensorUtils$toKotDetail$attributes$6;

    .line 32
    .line 33
    invoke-direct {v5, p0}, Lkot/utils/model/SensorUtils$toKotDetail$attributes$6;-><init>(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v6, Lkot/utils/model/SensorUtils$toKotDetail$attributes$7;

    .line 37
    .line 38
    invoke-direct {v6, p0}, Lkot/utils/model/SensorUtils$toKotDetail$attributes$7;-><init>(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Lkot/utils/model/SensorUtils$toKotDetail$attributes$8;

    .line 42
    .line 43
    invoke-direct {v7, p0}, Lkot/utils/model/SensorUtils$toKotDetail$attributes$8;-><init>(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v8, Lkot/utils/model/SensorUtils$toKotDetail$attributes$9;

    .line 47
    .line 48
    invoke-direct {v8, p0}, Lkot/utils/model/SensorUtils$toKotDetail$attributes$9;-><init>(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/16 p0, 0x9

    .line 52
    .line 53
    new-array p0, p0, [Lkotlin/reflect/KProperty0;

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    aput-object v0, p0, v9

    .line 57
    .line 58
    const/4 v0, 0x1

    .line 59
    aput-object v1, p0, v0

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    aput-object v2, p0, v0

    .line 63
    .line 64
    const/4 v0, 0x3

    .line 65
    aput-object v3, p0, v0

    .line 66
    .line 67
    const/4 v0, 0x4

    .line 68
    aput-object v4, p0, v0

    .line 69
    .line 70
    const/4 v0, 0x5

    .line 71
    aput-object v5, p0, v0

    .line 72
    .line 73
    const/4 v0, 0x6

    .line 74
    aput-object v6, p0, v0

    .line 75
    .line 76
    const/4 v0, 0x7

    .line 77
    aput-object v7, p0, v0

    .line 78
    .line 79
    const/16 v0, 0x8

    .line 80
    .line 81
    aput-object v8, p0, v0

    .line 82
    .line 83
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {}, Lkotlin/collections/MapsKt;->createMapBuilder()Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lkotlin/reflect/KProperty0;

    .line 106
    .line 107
    invoke-interface {v1}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v1}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_1

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    const/4 v1, 0x0

    .line 123
    :goto_1
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-eqz v1, :cond_0

    .line 136
    .line 137
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    invoke-static {v0}, Lkotlin/collections/MapsKt;->build(Ljava/util/Map;)Ljava/util/Map;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    new-instance p0, Lkot/KotDetail;

    .line 146
    .line 147
    const/16 v8, 0xa

    .line 148
    .line 149
    const/4 v9, 0x0

    .line 150
    const-string v4, "sensor"

    .line 151
    .line 152
    const/4 v5, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    move-object v3, p0

    .line 155
    invoke-direct/range {v3 .. v9}, Lkot/KotDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 156
    .line 157
    .line 158
    return-object p0
.end method

.method public static final toSensor(Lkot/KotDetail;)Lkot/utils/model/Sensor;
    .locals 14
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
    const-string v1, "sensor"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "azimuth"

    .line 19
    .line 20
    invoke-static {p0, v0}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v0, "elevation"

    .line 25
    .line 26
    invoke-static {p0, v0}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v0, "roll"

    .line 31
    .line 32
    invoke-static {p0, v0}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    const-string v0, "fov"

    .line 37
    .line 38
    invoke-static {p0, v0}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-string v0, "vfov"

    .line 43
    .line 44
    invoke-static {p0, v0}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    const-string v0, "north"

    .line 49
    .line 50
    invoke-static {p0, v0}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "type"

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v9, v0

    .line 65
    check-cast v9, Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v9, :cond_0

    .line 68
    .line 69
    new-instance v0, Lkot/KotType;

    .line 70
    .line 71
    const/4 v12, 0x6

    .line 72
    const/4 v13, 0x0

    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    move-object v8, v0

    .line 76
    invoke-direct/range {v8 .. v13}, Lkot/KotType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 81
    move-object v8, v0

    .line 82
    :goto_0
    invoke-virtual {p0}, Lkot/KotDetail;->getAttributes()Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "model"

    .line 87
    .line 88
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    move-object v9, v0

    .line 93
    check-cast v9, Ljava/lang/String;

    .line 94
    .line 95
    const-string v0, "range"

    .line 96
    .line 97
    invoke-static {p0, v0}, Lkot/utils/KotUtils;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    new-instance p0, Lkot/utils/model/Sensor;

    .line 102
    .line 103
    move-object v1, p0

    .line 104
    invoke-direct/range {v1 .. v10}, Lkot/utils/model/Sensor;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Lkot/KotType;Ljava/lang/String;Ljava/lang/Double;)V

    .line 105
    .line 106
    .line 107
    return-object p0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v1, "This detail does not represent a sensor detail ("

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string p0, " != sensor)"

    .line 126
    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 135
    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0
.end method

.method public static final toSensorOrNull(Lkot/KotDetail;)Lkot/utils/model/Sensor;
    .locals 2
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
    invoke-virtual {p0}, Lkot/KotDetail;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "sensor"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p0}, Lkot/utils/model/SensorUtils;->toSensor(Lkot/KotDetail;)Lkot/utils/model/Sensor;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    return-object p0
.end method
