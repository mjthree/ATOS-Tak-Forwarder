.class public final Lkot/utils/KotUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final battery(Lkot/KotEvent;)D
    .locals 2
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->battery(Lkot/KotEvent;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final batteryOrNull(Lkot/KotEvent;)Ljava/lang/Double;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->batteryOrNull(Lkot/KotEvent;)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final booleanAttribute(Lkot/KotDetail;Ljava/lang/String;)Z
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->booleanAttribute(Lkot/KotDetail;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final booleanAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->booleanAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final callsign(Lkot/KotEvent;)Ljava/lang/String;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->callsign(Lkot/KotEvent;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final callsignOrNull(Lkot/KotEvent;)Ljava/lang/String;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->callsignOrNull(Lkot/KotEvent;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final contact(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->contact(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final contactOrNull(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->contactOrNull(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final course(Lkot/KotEvent;)D
    .locals 2
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->course(Lkot/KotEvent;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final courseOrNull(Lkot/KotEvent;)Ljava/lang/Double;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->courseOrNull(Lkot/KotEvent;)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final doubleAttribute(Lkot/KotDetail;Ljava/lang/String;)D
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->doubleAttribute(Lkot/KotDetail;Ljava/lang/String;)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final doubleAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;)D
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->doubleAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final doubleAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;D)D
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3}, Lkot/utils/KotUtils__KotDetailUtilsKt;->doubleAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic doubleAttributeOrDefault$default(Lkot/KotDetail;Ljava/lang/String;DILjava/lang/Object;)D
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lkot/utils/KotUtils__KotDetailUtilsKt;->doubleAttributeOrDefault$default(Lkot/KotDetail;Ljava/lang/String;DILjava/lang/Object;)D

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->doubleAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final floatAttribute(Lkot/KotDetail;Ljava/lang/String;)F
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->floatAttribute(Lkot/KotDetail;Ljava/lang/String;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final floatAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;F)F
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1, p2}, Lkot/utils/KotUtils__KotDetailUtilsKt;->floatAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final floatAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Float;
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->floatAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final image(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->image(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final imageOrNull(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->imageOrNull(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final intAttribute(Lkot/KotDetail;Ljava/lang/String;)I
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->intAttribute(Lkot/KotDetail;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final intAttribute(Lkot/KotDetail;Ljava/lang/String;I)I
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lkot/utils/KotUtils__KotDetailUtilsKt;->intAttribute(Lkot/KotDetail;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static synthetic intAttribute$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkot/utils/KotUtils__KotDetailUtilsKt;->intAttribute$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final intAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;I)I
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkot/utils/KotUtils__KotDetailUtilsKt;->intAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final intAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;II)I
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3}, Lkot/utils/KotUtils__KotDetailUtilsKt;->intAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static synthetic intAttributeOrDefault$default(Lkot/KotDetail;Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lkot/utils/KotUtils__KotDetailUtilsKt;->intAttributeOrDefault$default(Lkot/KotDetail;Ljava/lang/String;IIILjava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final intAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->intAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final intAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lkot/utils/KotUtils__KotDetailUtilsKt;->intAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic intAttributeOrNull$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkot/utils/KotUtils__KotDetailUtilsKt;->intAttributeOrNull$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final isStale(Lkot/KotEvent;)Z
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->isStale(Lkot/KotEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final link(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->link(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final linkOrNull(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->linkOrNull(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final longAttribute(Lkot/KotDetail;Ljava/lang/String;)J
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->longAttribute(Lkot/KotDetail;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final longAttribute(Lkot/KotDetail;Ljava/lang/String;I)J
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lkot/utils/KotUtils__KotDetailUtilsKt;->longAttribute(Lkot/KotDetail;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic longAttribute$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkot/utils/KotUtils__KotDetailUtilsKt;->longAttribute$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final longAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;J)J
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkot/utils/KotUtils__KotDetailUtilsKt;->longAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final longAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;JI)J
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lkot/utils/KotUtils__KotDetailUtilsKt;->longAttributeOrDefault(Lkot/KotDetail;Ljava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic longAttributeOrDefault$default(Lkot/KotDetail;Ljava/lang/String;JIILjava/lang/Object;)J
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lkot/utils/KotUtils__KotDetailUtilsKt;->longAttributeOrDefault$default(Lkot/KotDetail;Ljava/lang/String;JIILjava/lang/Object;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final longAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Long;
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkot/utils/KotUtils__KotDetailUtilsKt;->longAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final longAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;I)Ljava/lang/Long;
    .locals 0
    .param p0    # Lkot/KotDetail;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lkot/utils/KotUtils__KotDetailUtilsKt;->longAttributeOrNull(Lkot/KotDetail;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic longAttributeOrNull$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lkot/utils/KotUtils__KotDetailUtilsKt;->longAttributeOrNull$default(Lkot/KotDetail;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final remarks(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->remarks(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final remarksOrNull(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->remarksOrNull(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final sensor(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->sensor(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final sensorOrNull(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->sensorOrNull(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final speed(Lkot/KotEvent;)D
    .locals 2
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->speed(Lkot/KotEvent;)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final speedOrNull(Lkot/KotEvent;)Ljava/lang/Double;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->speedOrNull(Lkot/KotEvent;)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final system(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->system(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final systemOrNull(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->systemOrNull(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final track(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->track(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final trackOrNull(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->trackOrNull(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final video(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->video(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final videoOrNull(Lkot/KotEvent;)Lkot/KotDetail;
    .locals 0
    .param p0    # Lkot/KotEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lkot/utils/KotUtils__KotEventUtilsKt;->videoOrNull(Lkot/KotEvent;)Lkot/KotDetail;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
