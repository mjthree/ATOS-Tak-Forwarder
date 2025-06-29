.class public final Lcom/toughstump/atos/atak/export/MissionPackageExporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMissionPackageExporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MissionPackageExporter.kt\ncom/toughstump/atos/atak/export/MissionPackageExporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMissionPackageExporter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MissionPackageExporter.kt\ncom/toughstump/atos/atak/export/MissionPackageExporter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"
    }
.end annotation


# static fields
.field private static final FILE_TIMESTAMP_FORMAT:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/toughstump/atos/atak/export/MissionPackageExporter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static lastSentFileName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/toughstump/atos/atak/export/MissionPackageExporter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/atak/export/MissionPackageExporter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->INSTANCE:Lcom/toughstump/atos/atak/export/MissionPackageExporter;

    .line 7
    .line 8
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    const-string v1, "yyyyMMdd\'T\'hhmm"

    .line 11
    .line 12
    invoke-static {}, Lcom/atakmap/coremap/locale/LocaleUtil;->getCurrent()Ljava/util/Locale;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->FILE_TIMESTAMP_FORMAT:Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
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

.method private final getFileTimestamp(J)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->FILE_TIMESTAMP_FORMAT:Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/Date;

    .line 5
    .line 6
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0

    .line 19
    throw p1
.end method

.method static synthetic getFileTimestamp$default(Lcom/toughstump/atos/atak/export/MissionPackageExporter;JILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/atakmap/coremap/maps/time/CoordinatedTime;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/atakmap/coremap/maps/time/CoordinatedTime;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/atakmap/coremap/maps/time/CoordinatedTime;->getMilliseconds()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->getFileTimestamp(J)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final getFILE_TIMESTAMP_FORMAT()Ljava/text/SimpleDateFormat;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->FILE_TIMESTAMP_FORMAT:Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastSentFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->lastSentFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final saveManifest(Lcom/toughstump/atos/manifest/AtosManifest;Lcom/atakmap/android/maps/MapView;Landroid/content/Context;)V
    .locals 8
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/atakmap/android/maps/MapView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p3, "manifest"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "mapView"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "_"

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "ATOS"

    .line 29
    .line 30
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {p0, v0, v1, v2, v3}, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->getFileTimestamp$default(Lcom/toughstump/atos/atak/export/MissionPackageExporter;JILjava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "toString(...)"

    .line 52
    .line 53
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v4, ".zip"

    .line 57
    .line 58
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Ljava/io/File;

    .line 69
    .line 70
    invoke-static {}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->getPluginDir()Ljava/io/File;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-direct {v1, v4, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, ".atos"

    .line 86
    .line 87
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    filled-new-array {p3}, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-static {p3}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->getTempDir([Ljava/lang/String;)Ljava/io/File;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    const/4 v4, 0x0

    .line 103
    invoke-static {p1, p3, v4}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->writeJsonFile(Ljava/lang/Object;Ljava/io/File;Z)Z

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v2, v4, v3}, Latak/core/mv;->a(Ljava/lang/String;ZZLjava/lang/String;)Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;->getConfiguration()Lcom/atakmap/android/missionpackage/file/MissionPackageConfiguration;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    new-instance v5, Lcom/atakmap/android/missionpackage/file/NameValuePair;

    .line 115
    .line 116
    const-string v6, "callsign"

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-direct {v5, v6, v7}, Lcom/atakmap/android/missionpackage/file/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v5}, Lcom/atakmap/android/missionpackage/file/MissionPackageConfiguration;->setParameter(Lcom/atakmap/android/missionpackage/file/NameValuePair;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;->getConfiguration()Lcom/atakmap/android/missionpackage/file/MissionPackageConfiguration;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    new-instance v5, Lcom/atakmap/android/missionpackage/file/NameValuePair;

    .line 133
    .line 134
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    const-string v7, "uid"

    .line 143
    .line 144
    invoke-direct {v5, v7, v6}, Lcom/atakmap/android/missionpackage/file/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v5}, Lcom/atakmap/android/missionpackage/file/MissionPackageConfiguration;->setParameter(Lcom/atakmap/android/missionpackage/file/NameValuePair;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v0, p3, p1}, Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;->addFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v0, p1}, Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;->setPath(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    new-instance p1, Lcom/atakmap/android/missionpackage/file/MissionPackageBuilder;

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/atakmap/android/maps/MapView;->getRootGroup()Lcom/atakmap/android/maps/bb;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-direct {p1, v3, v0, p2}, Lcom/atakmap/android/missionpackage/file/MissionPackageBuilder;-><init>(Lcom/atakmap/android/missionpackage/file/MissionPackageBuilder$Progress;Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;Lcom/atakmap/android/maps/ak;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/atakmap/android/missionpackage/file/MissionPackageBuilder;->build()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->archiveExisting(Ljava/io/File;)V

    .line 177
    .line 178
    .line 179
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    const-string p2, "Exported to %s"

    .line 198
    .line 199
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string p2, "format(...)"

    .line 204
    .line 205
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {p2, p1}, Lcom/atakmap/android/atos/utilities/RunnableManager;->toast(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public final sendManifest(Lcom/toughstump/atos/manifest/AtosManifest;Lcom/atakmap/android/maps/MapView;Landroid/content/Context;)V
    .locals 7
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/atakmap/android/maps/MapView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pluginContext"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "_"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "ATOS"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-static {p0, v1, v2, v3, v4}, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->getFileTimestamp$default(Lcom/toughstump/atos/atak/export/MissionPackageExporter;JILjava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "toString(...)"

    .line 52
    .line 53
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ".atos"

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    sput-object v1, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->lastSentFileName:Ljava/lang/String;

    .line 81
    .line 82
    filled-new-array {v1}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->getTempDir([Ljava/lang/String;)Ljava/io/File;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/4 v2, 0x0

    .line 91
    invoke-static {p1, v1, v2}, Lcom/atakmap/android/atos/utilities/AtosFileUtils;->writeJsonFile(Ljava/lang/Object;Ljava/io/File;Z)Z

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v3, v3, v4}, Latak/core/mv;->a(Ljava/lang/String;ZZLjava/lang/String;)Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;->getConfiguration()Lcom/atakmap/android/missionpackage/file/MissionPackageConfiguration;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v4, Lcom/atakmap/android/missionpackage/file/NameValuePair;

    .line 103
    .line 104
    const-string v5, "callsign"

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-direct {v4, v5, v6}, Lcom/atakmap/android/missionpackage/file/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2, v4}, Lcom/atakmap/android/missionpackage/file/MissionPackageConfiguration;->setParameter(Lcom/atakmap/android/missionpackage/file/NameValuePair;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;->getConfiguration()Lcom/atakmap/android/missionpackage/file/MissionPackageConfiguration;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    new-instance v4, Lcom/atakmap/android/missionpackage/file/NameValuePair;

    .line 121
    .line 122
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    const-string v6, "uid"

    .line 131
    .line 132
    invoke-direct {v4, v6, v5}, Lcom/atakmap/android/missionpackage/file/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, v4}, Lcom/atakmap/android/missionpackage/file/MissionPackageConfiguration;->setParameter(Lcom/atakmap/android/missionpackage/file/NameValuePair;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, v1, p1}, Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;->addFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    new-instance p1, Latak/core/kf$b;

    .line 146
    .line 147
    invoke-direct {p1, p2}, Latak/core/kf$b;-><init>(Lcom/atakmap/android/maps/MapView;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v0}, Latak/core/kf$b;->a(Lcom/atakmap/android/missionpackage/file/MissionPackageManifest;)Latak/core/kf$b;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v3}, Latak/core/kf$b;->a(Z)Latak/core/kf$b;

    .line 154
    .line 155
    .line 156
    sget p2, Lcom/atakmap/android/atos/plugin/R$drawable;->ic_atos:I

    .line 157
    .line 158
    invoke-virtual {p3, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Latak/core/kf$b;->a(Landroid/graphics/drawable/Drawable;)Latak/core/kf$b;

    .line 163
    .line 164
    .line 165
    const-string p2, "Send ATOS Manifest"

    .line 166
    .line 167
    invoke-virtual {p1, p2}, Latak/core/kf$b;->a(Ljava/lang/String;)Latak/core/kf$b;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Latak/core/kf$b;->b()Latak/core/kf;

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public final setLastSentFileName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Lcom/toughstump/atos/atak/export/MissionPackageExporter;->lastSentFileName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
