.class public final Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt$WhenMappings;
    }
.end annotation


# static fields
.field private static final updateTime:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "HH:mm:ss"

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->updateTime:Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    return-void
.end method

.method public static final getColorInt(Lcom/toughstump/atos/AtosColor;)I
    .locals 2
    .param p0    # Lcom/toughstump/atos/AtosColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v0, p0

    .line 13
    .line 14
    const/16 v0, 0x80

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    packed-switch p0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 21
    .line 22
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p0

    .line 26
    :pswitch_0
    const/16 p0, 0x4c

    .line 27
    .line 28
    invoke-static {v1, p0, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    goto :goto_0

    .line 33
    :pswitch_1
    const p0, -0xff0100

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_2
    const/16 p0, 0xb2

    .line 38
    .line 39
    invoke-static {v1, p0, p0}, Landroid/graphics/Color;->rgb(III)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    const p0, -0xff0001

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_4
    const p0, -0xffff01

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_5
    invoke-static {v0, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    goto :goto_0

    .line 57
    :pswitch_6
    invoke-static {v0, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    goto :goto_0

    .line 62
    :pswitch_7
    const/high16 p0, -0x10000

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_8
    const p0, -0xff01

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_9
    const/16 p0, 0xff

    .line 70
    .line 71
    const/16 v0, 0xa5

    .line 72
    .line 73
    invoke-static {p0, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    goto :goto_0

    .line 78
    :pswitch_a
    const/16 p0, -0x100

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_b
    const/4 p0, -0x1

    .line 82
    :goto_0
    return p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDisplay(Lkot/KotTime;)Ljava/lang/String;
    .locals 4
    .param p0    # Lkot/KotTime;
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
    sget-object v0, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt;->updateTime:Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-virtual {p0}, Lkot/KotTime;->getMilliseconds()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "format(...)"

    .line 22
    .line 23
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public static final getIconId(Lcom/toughstump/atos/AtosTrackType;)I
    .locals 1
    .param p0    # Lcom/toughstump/atos/AtosTrackType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v0, p0

    .line 13
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 18
    .line 19
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :pswitch_0
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_rotary_large:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_fixed_large:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_2
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_weapon_large:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_medical_large:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_4
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_equipment_large:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_5
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_uas_large:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_6
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_boat_large:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_7
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_custom_large:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_8
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_bundle_large:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_9
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_veh_large:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_a
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_hound_large:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_b
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_pax_large:I

    .line 57
    .line 58
    :goto_0
    return p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getMarkerIconId(Lcom/toughstump/atos/AtosTrackType;)I
    .locals 1
    .param p0    # Lcom/toughstump/atos/AtosTrackType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v0, p0

    .line 13
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 18
    .line 19
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :pswitch_0
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_rotary:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_fixed:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_2
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_weapon:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_medical:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_4
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_equipment:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_5
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_uas:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_6
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_boat:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_7
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_custom:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_8
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_bundle:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_9
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_veh:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_a
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_hound:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_b
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_pax:I

    .line 57
    .line 58
    :goto_0
    return p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getMarkerNoGpsId(Lcom/toughstump/atos/AtosTrackType;)I
    .locals 1
    .param p0    # Lcom/toughstump/atos/AtosTrackType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/toughstump/atos/activity/ui/AtosViewUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v0, p0

    .line 13
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 18
    .line 19
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :pswitch_0
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_rotary_no_gps:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_fixed_no_gps:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_2
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_weapon_no_gps:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_medical_no_gps:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_4
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_equipment_no_gps:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_5
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_uas_no_gps:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_6
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_boat_no_gps:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_7
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_custom_no_gps:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_8
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_bundle_no_gps:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_9
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_veh_no_gps:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_a
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_track_hound_no_gps:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_b
    sget p0, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_pax_no_gps:I

    .line 57
    .line 58
    :goto_0
    return p0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
