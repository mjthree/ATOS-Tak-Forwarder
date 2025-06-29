.class public final Lkot/utils/model/Track;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkot/utils/model/Track$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkot/utils/model/Track$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DETAIL_ATTRIBUTE_COURSE:Ljava/lang/String; = "course"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DETAIL_ATTRIBUTE_SLOPE:Ljava/lang/String; = "slope"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DETAIL_ATTRIBUTE_SPEED:Ljava/lang/String; = "speed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DETAIL_ATTRIBUTE_VERTICAL_SPEED:Ljava/lang/String; = "vspeed"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DETAIL_TRACK:Ljava/lang/String; = "track"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VALID_RANGE_COURSE:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VALID_RANGE_SLOPE:Lkotlin/ranges/ClosedFloatingPointRange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/ranges/ClosedFloatingPointRange<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final course:D

.field private final slope:D

.field private final speed:D

.field private final verticalSpeed:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkot/utils/model/Track$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkot/utils/model/Track$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkot/utils/model/Track;->Companion:Lkot/utils/model/Track$Companion;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->rangeTo(DD)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lkot/utils/model/Track;->VALID_RANGE_COURSE:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 21
    .line 22
    const-wide v0, -0x3fa9800000000000L    # -90.0

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const-wide v2, 0x4056800000000000L    # 90.0

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->rangeTo(DD)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lkot/utils/model/Track;->VALID_RANGE_SLOPE:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(DDDLjava/lang/Double;)V
    .locals 0
    .param p7    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkot/utils/model/Track;->course:D

    iput-wide p3, p0, Lkot/utils/model/Track;->speed:D

    iput-wide p5, p0, Lkot/utils/model/Track;->slope:D

    iput-object p7, p0, Lkot/utils/model/Track;->verticalSpeed:Ljava/lang/Double;

    return-void
.end method

.method public synthetic constructor <init>(DDDLjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .line 2
    invoke-direct/range {v1 .. v8}, Lkot/utils/model/Track;-><init>(DDDLjava/lang/Double;)V

    return-void
.end method

.method public static final synthetic access$getVALID_RANGE_COURSE$cp()Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 1

    .line 1
    sget-object v0, Lkot/utils/model/Track;->VALID_RANGE_COURSE:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getVALID_RANGE_SLOPE$cp()Lkotlin/ranges/ClosedFloatingPointRange;
    .locals 1

    .line 1
    sget-object v0, Lkot/utils/model/Track;->VALID_RANGE_SLOPE:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic copy$default(Lkot/utils/model/Track;DDDLjava/lang/Double;ILjava/lang/Object;)Lkot/utils/model/Track;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lkot/utils/model/Track;->course:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lkot/utils/model/Track;->speed:D

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lkot/utils/model/Track;->slope:D

    goto :goto_2

    :cond_2
    move-wide v5, p5

    :goto_2
    and-int/lit8 v7, p8, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lkot/utils/model/Track;->verticalSpeed:Ljava/lang/Double;

    goto :goto_3

    :cond_3
    move-object v7, p7

    :goto_3
    move-wide p1, v1

    move-wide p3, v3

    move-wide p5, v5

    move-object p7, v7

    invoke-virtual/range {p0 .. p7}, Lkot/utils/model/Track;->copy(DDDLjava/lang/Double;)Lkot/utils/model/Track;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lkot/utils/model/Track;->course:D

    return-wide v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lkot/utils/model/Track;->speed:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lkot/utils/model/Track;->slope:D

    return-wide v0
.end method

.method public final component4()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lkot/utils/model/Track;->verticalSpeed:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(DDDLjava/lang/Double;)Lkot/utils/model/Track;
    .locals 9
    .param p7    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Lkot/utils/model/Track;

    move-object v0, v8

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lkot/utils/model/Track;-><init>(DDDLjava/lang/Double;)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkot/utils/model/Track;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkot/utils/model/Track;

    iget-wide v3, p0, Lkot/utils/model/Track;->course:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lkot/utils/model/Track;->course:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lkot/utils/model/Track;->speed:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lkot/utils/model/Track;->speed:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lkot/utils/model/Track;->slope:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lkot/utils/model/Track;->slope:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lkot/utils/model/Track;->verticalSpeed:Ljava/lang/Double;

    iget-object p1, p1, Lkot/utils/model/Track;->verticalSpeed:Ljava/lang/Double;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCourse()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lkot/utils/model/Track;->course:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSlope()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lkot/utils/model/Track;->slope:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getSpeed()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lkot/utils/model/Track;->speed:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getVerticalSpeed()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/utils/model/Track;->verticalSpeed:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lkot/utils/model/Track;->course:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lkot/utils/model/Track;->speed:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lkot/utils/model/Track;->slope:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkot/utils/model/Track;->verticalSpeed:Ljava/lang/Double;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track(course="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkot/utils/model/Track;->course:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkot/utils/model/Track;->speed:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", slope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkot/utils/model/Track;->slope:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", verticalSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkot/utils/model/Track;->verticalSpeed:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
