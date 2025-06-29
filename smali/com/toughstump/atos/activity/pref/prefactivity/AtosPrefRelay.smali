.class public final Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosPrefRelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosPrefRelay.kt\ncom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1#2:83\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAtosPrefRelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosPrefRelay.kt\ncom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,82:1\n1#2:83\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_BT_ENABLED:Ljava/lang/String; = "atos_service_enabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_GOTENNA_DISTANCE_THRESHOLD:Ljava/lang/String; = "atos_gotenna_distance_threshold"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_GOTENNA_ENABLED:Ljava/lang/String; = "atos_gotenna_enabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_GOTENNA_REFRESH_RATE:Ljava/lang/String; = "atos_gotenna_refresh_rate"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_HIDE_STALE:Ljava/lang/String; = "atos_hide_stale"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_LEGACY_HISTORY_UID:Ljava/lang/String; = "atos_legacy_history_uid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_ONLY_CURRENT_MANIFEST_ENABLED:Ljava/lang/String; = "atos_only_current_manifest_enabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AtosPrefRelay"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static prefStruct:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;

    invoke-direct {v0}, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;-><init>()V

    sput-object v0, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->INSTANCE:Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p2, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 5
    .line 6
    const-string v0, "atos_service_enabled"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v0, "atos_hide_stale"

    .line 14
    .line 15
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string v0, "atos_legacy_history_uid"

    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const-string v0, "atos_gotenna_enabled"

    .line 26
    .line 27
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const-string v0, "atos_only_current_manifest_enabled"

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    const-string v0, "atos_gotenna_refresh_rate"

    .line 38
    .line 39
    const-string v1, "60"

    .line 40
    .line 41
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/16 v0, 0x3c

    .line 59
    .line 60
    :goto_0
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 61
    .line 62
    const/16 v7, 0x1e

    .line 63
    .line 64
    const/16 v8, 0x12c

    .line 65
    .line 66
    invoke-direct {v1, v7, v8}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const-string v0, "atos_gotenna_distance_threshold"

    .line 74
    .line 75
    const-string v1, "1000"

    .line 76
    .line 77
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/16 v0, 0x3e8

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    invoke-static {p1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move p1, v0

    .line 97
    :goto_1
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 98
    .line 99
    const/16 v8, 0x7d0

    .line 100
    .line 101
    invoke-direct {v1, v0, v8}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    const/16 v9, 0x80

    .line 109
    .line 110
    const/4 v10, 0x0

    .line 111
    const/4 v8, 0x0

    .line 112
    move-object v0, p2

    .line 113
    move v1, v2

    .line 114
    move v2, v3

    .line 115
    move v3, v4

    .line 116
    move v4, v5

    .line 117
    move v5, v6

    .line 118
    move v6, v7

    .line 119
    move v7, p1

    .line 120
    invoke-direct/range {v0 .. v10}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;-><init>(ZZZZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    .line 122
    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v0, "Shared Preferences Changed: "

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v0, "AtosPrefRelay"

    .line 141
    .line 142
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    sget-object p1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->INSTANCE:Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->getPreferenceRepo()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_3

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->setAtosPrefs(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;)V

    .line 154
    .line 155
    .line 156
    :cond_3
    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->INSTANCE:Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefLifecycle;->getPreferenceRepo()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getPreferenceJsonString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v1

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object v1, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->Companion:Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;->fromJson(Ljava/lang/String;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    sput-object v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->prefStruct:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 34
    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->prefStruct:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getBluetoothEnabled()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const-string v2, "atos_service_enabled"

    .line 48
    .line 49
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50
    .line 51
    .line 52
    :cond_2
    sget-object v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->prefStruct:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getHideStale()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const-string v2, "atos_hide_stale"

    .line 61
    .line 62
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    .line 64
    .line 65
    :cond_3
    sget-object v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->prefStruct:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getLegacyTrackHistoryUid()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const-string v2, "atos_legacy_history_uid"

    .line 74
    .line 75
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    .line 77
    .line 78
    :cond_4
    sget-object v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->prefStruct:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 79
    .line 80
    if-eqz v1, :cond_5

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaEnabled()Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const-string v2, "atos_gotenna_enabled"

    .line 87
    .line 88
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 89
    .line 90
    .line 91
    :cond_5
    sget-object v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->prefStruct:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getOnlyCurrentManifestVisible()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const-string v2, "atos_only_current_manifest_enabled"

    .line 100
    .line 101
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    .line 103
    .line 104
    :cond_6
    sget-object v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->prefStruct:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 105
    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaRefreshRate()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    const-string v2, "atos_gotenna_refresh_rate"

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    .line 120
    .line 121
    :cond_7
    sget-object v1, Lcom/toughstump/atos/activity/pref/prefactivity/AtosPrefRelay;->prefStruct:Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 122
    .line 123
    if-eqz v1, :cond_8

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getGoTennaDistanceThreshold()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const-string v2, "atos_gotenna_distance_threshold"

    .line 130
    .line 131
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    .line 137
    .line 138
    :cond_8
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    .line 140
    .line 141
    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method
