.class public final Lcom/toughstump/atos/activity/pref/AtosPrefs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/activity/pref/AtosPrefs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toughstump/atos/activity/pref/AtosPrefs;

    invoke-direct {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefs;-><init>()V

    sput-object v0, Lcom/toughstump/atos/activity/pref/AtosPrefs;->INSTANCE:Lcom/toughstump/atos/activity/pref/AtosPrefs;

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
.method public final getBluetoothEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/pref/AtosPrefs;->getPrefStruct()Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->getBluetoothEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getPrefStruct()Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->Companion:Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;

    .line 2
    .line 3
    sget-object v1, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->getPreferenceJsonString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct$Companion;->fromJson(Ljava/lang/String;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public final setBluetoothEnabled(Z)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/toughstump/atos/activity/pref/AtosPrefs;->getPrefStruct()Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v9, 0xfe

    .line 6
    .line 7
    const/4 v10, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    move v1, p1

    .line 16
    invoke-static/range {v0 .. v10}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->copy$default(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;ZZZZZIIZILjava/lang/Object;)Lcom/toughstump/atos/activity/pref/AtosPrefStruct;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/activity/pref/AtosPrefs;->setPrefStruct(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setPrefStruct(Lcom/toughstump/atos/activity/pref/AtosPrefStruct;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/activity/pref/AtosPrefStruct;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/atakmap/android/atos/AtosLifecycle;->INSTANCE:Lcom/atakmap/android/atos/AtosLifecycle;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/atakmap/android/atos/AtosLifecycle;->getPreferenceRepository()Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lcom/toughstump/atos/activity/pref/AtosPrefStruct;->toJson()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Lcom/toughstump/atos/activity/pref/AtosPreferenceRepository;->setPreferenceJsonString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
