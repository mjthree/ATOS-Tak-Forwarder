.class public final Lcom/toughstump/atos/pref/AtosTagCreationPrefs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/toughstump/atos/pref/AtosTagCreationPrefs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static defaultColor:Lcom/toughstump/atos/AtosColor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static defaultType:Lcom/toughstump/atos/AtosTrackType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static staleTimeMinutes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->INSTANCE:Lcom/toughstump/atos/pref/AtosTagCreationPrefs;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    sput v0, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->staleTimeMinutes:I

    .line 10
    .line 11
    sget-object v0, Lcom/toughstump/atos/AtosTrackType;->PAX:Lcom/toughstump/atos/AtosTrackType;

    .line 12
    .line 13
    sput-object v0, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->defaultType:Lcom/toughstump/atos/AtosTrackType;

    .line 14
    .line 15
    sget-object v0, Lcom/toughstump/atos/AtosColor;->WHITE:Lcom/toughstump/atos/AtosColor;

    .line 16
    .line 17
    sput-object v0, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->defaultColor:Lcom/toughstump/atos/AtosColor;

    .line 18
    .line 19
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
.method public final getDefaultColor()Lcom/toughstump/atos/AtosColor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->defaultColor:Lcom/toughstump/atos/AtosColor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDefaultType()Lcom/toughstump/atos/AtosTrackType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->defaultType:Lcom/toughstump/atos/AtosTrackType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStaleTimeMinutes()I
    .locals 1

    .line 1
    sget v0, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->staleTimeMinutes:I

    .line 2
    .line 3
    return v0
.end method

.method public final newDefaultTag(I)Lcom/toughstump/atos/manifest/AtosManifestTag;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/toughstump/atos/manifest/AtosManifestTag;->Companion:Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;

    .line 2
    .line 3
    sget-object v1, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->defaultType:Lcom/toughstump/atos/AtosTrackType;

    .line 4
    .line 5
    sget-object v2, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->defaultColor:Lcom/toughstump/atos/AtosColor;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, v2}, Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;->newDefaultManifestTag(ILcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final setDefaultColor(Lcom/toughstump/atos/AtosColor;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/AtosColor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->defaultColor:Lcom/toughstump/atos/AtosColor;

    .line 7
    .line 8
    return-void
.end method

.method public final setDefaultType(Lcom/toughstump/atos/AtosTrackType;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/AtosTrackType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->defaultType:Lcom/toughstump/atos/AtosTrackType;

    .line 7
    .line 8
    return-void
.end method

.method public final setStaleTimeMinutes(I)V
    .locals 0

    .line 1
    sput p1, Lcom/toughstump/atos/pref/AtosTagCreationPrefs;->staleTimeMinutes:I

    .line 2
    .line 3
    return-void
.end method
