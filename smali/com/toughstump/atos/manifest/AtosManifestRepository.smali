.class public final Lcom/toughstump/atos/manifest/AtosManifestRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosManifestRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosManifestRepository.kt\ncom/toughstump/atos/manifest/AtosManifestRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,106:1\n286#2,2:107\n1#3:109\n211#4,2:110\n*S KotlinDebug\n*F\n+ 1 AtosManifestRepository.kt\ncom/toughstump/atos/manifest/AtosManifestRepository\n*L\n21#1:107,2\n91#1:110,2\n*E\n"
.end annotation


# instance fields
.field private currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final manifestTagUpdated:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final manifestUpdated:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/manifest/AtosManifest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private manifests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/manifest/AtosManifest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;)V
    .locals 4
    .param p1    # Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "database"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 16
    .line 17
    invoke-interface {p1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->getAllManifests()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->manifests:Ljava/util/Map;

    .line 26
    .line 27
    new-instance p1, Lcom/toughstump/event/Event;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->manifestUpdated:Lcom/toughstump/event/Event;

    .line 33
    .line 34
    new-instance p1, Lcom/toughstump/event/Event;

    .line 35
    .line 36
    invoke-direct {p1}, Lcom/toughstump/event/Event;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->manifestTagUpdated:Lcom/toughstump/event/Event;

    .line 40
    .line 41
    iget-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 42
    .line 43
    const-string v0, "atos_default_manifest"

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    if-nez p1, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifests()Ljava/util/Map;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_1

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    move-object v3, v2

    .line 71
    check-cast v3, Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v2, 0x0

    .line 81
    :goto_0
    if-eqz v2, :cond_2

    .line 82
    .line 83
    move p1, v1

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    const/4 p1, 0x0

    .line 86
    :goto_1
    sget-object v2, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 87
    .line 88
    xor-int/2addr p1, v1

    .line 89
    invoke-virtual {v2, p1}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->newManifest(Z)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 96
    .line 97
    invoke-interface {v2, p1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->setCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifests()Ljava/util/Map;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-nez p1, :cond_4

    .line 105
    .line 106
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 107
    .line 108
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->manifests:Ljava/util/Map;

    .line 112
    .line 113
    :cond_4
    invoke-virtual {p0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifests()Ljava/util/Map;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-nez p1, :cond_5

    .line 122
    .line 123
    iget-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 124
    .line 125
    sget-object v0, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->newManifest(Z)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {p1, v0}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    return-void
.end method

.method public static synthetic deleteTag$default(Lcom/toughstump/atos/manifest/AtosManifestRepository;IZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->deleteTag(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic updateTag$default(Lcom/toughstump/atos/manifest/AtosManifestRepository;Lcom/toughstump/atos/manifest/AtosManifestTag;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->updateTag(Lcom/toughstump/atos/manifest/AtosManifestTag;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final deleteManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 2
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
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
    invoke-virtual {p0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifests()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->deleteManifest(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifests()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/4 v0, 0x1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    sget-object p1, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->newManifest(Z)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->newCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {p0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifests()Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v1, "atos_default_manifest"

    .line 75
    .line 76
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_4

    .line 81
    .line 82
    iget-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 83
    .line 84
    sget-object v1, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->newManifest(Z)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {p1, v0}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifests()Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/toughstump/atos/manifest/AtosManifest;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->newCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method public final deleteTag(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 9
    .line 10
    invoke-virtual {v1, v0, p1}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->deleteTag(Lcom/toughstump/atos/manifest/AtosManifest;I)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 16
    :goto_0
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 21
    .line 22
    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 27
    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    iget-object p2, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->manifestUpdated:Lcom/toughstump/event/Event;

    .line 31
    .line 32
    invoke-virtual {p2, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_3
    return-void
.end method

.method public final getCurrentManifest()Lcom/toughstump/atos/manifest/AtosManifest;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifestTagUpdated()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->manifestTagUpdated:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifestUpdated()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/manifest/AtosManifest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->manifestUpdated:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getManifests()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/manifest/AtosManifest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->getAllManifests()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final importManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 2
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
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
    invoke-virtual {p0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifests()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final newCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "atosTagManifest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->setCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->onDestroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final resetManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 14
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
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
    new-instance v7, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getTags()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    sget-object v8, Lcom/toughstump/atos/manifest/AtosManifestTag;->Companion:Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/toughstump/atos/manifest/AtosManifestTag;->getTagId()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    const/4 v12, 0x6

    .line 52
    const/4 v13, 0x0

    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v11, 0x0

    .line 55
    invoke-static/range {v8 .. v13}, Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;->newDefaultManifestTag$default(Lcom/toughstump/atos/manifest/AtosManifestTag$Companion;ILcom/toughstump/atos/AtosTrackType;Lcom/toughstump/atos/AtosColor;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifestTag;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/16 v8, 0xf

    .line 64
    .line 65
    const/4 v9, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const-wide/16 v5, 0x0

    .line 70
    .line 71
    move-object v1, p1

    .line 72
    invoke-static/range {v1 .. v9}, Lcom/toughstump/atos/manifest/AtosManifest;->copy$default(Lcom/toughstump/atos/manifest/AtosManifest;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;ILjava/lang/Object;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    const/4 v0, 0x0

    .line 86
    :goto_1
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 97
    .line 98
    :cond_2
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final setCurrentManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 0
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 2
    .line 3
    return-void
.end method

.method public final setManifests(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/manifest/AtosManifest;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->manifests:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public final updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V
    .locals 2
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifest;
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
    invoke-virtual {p0}, Lcom/toughstump/atos/manifest/AtosManifestRepository;->getManifests()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/toughstump/atos/manifest/AtosManifest;->getUid()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->manifestUpdated:Lcom/toughstump/event/Event;

    .line 23
    .line 24
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final updateTag(Lcom/toughstump/atos/manifest/AtosManifestTag;Z)V
    .locals 2
    .param p1    # Lcom/toughstump/atos/manifest/AtosManifestTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tagData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v1, Lcom/toughstump/atos/manifest/AtosManifest;->Companion:Lcom/toughstump/atos/manifest/AtosManifest$Companion;

    .line 14
    .line 15
    invoke-virtual {v1, v0, p1}, Lcom/toughstump/atos/manifest/AtosManifest$Companion;->updateTag(Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/manifest/AtosManifestTag;)Lcom/toughstump/atos/manifest/AtosManifest;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    iput-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->database:Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Lcom/toughstump/atos/manifest/db/IAtosManifestDatabase;->updateManifest(Lcom/toughstump/atos/manifest/AtosManifest;)V

    .line 26
    .line 27
    .line 28
    if-nez p2, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    new-instance p2, Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->currentManifest:Lcom/toughstump/atos/manifest/AtosManifest;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, v0, p1}, Lcom/toughstump/atos/manifest/AtosManifestRepository$ManifestUpdateArgs;-><init>(Lcom/toughstump/atos/manifest/AtosManifest;Lcom/toughstump/atos/manifest/AtosManifestTag;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/toughstump/atos/manifest/AtosManifestRepository;->manifestTagUpdated:Lcom/toughstump/event/Event;

    .line 42
    .line 43
    invoke-virtual {p1, p0, p2}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
