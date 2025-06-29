.class public final Lcom/toughstump/atos/state/db/AtosStateRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final database:Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final filterUpdated:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/filter/AtosFilterCriteria;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;)V
    .locals 12
    .param p1    # Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;
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
    iput-object p1, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->database:Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;->getActiveFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 16
    .line 17
    new-instance v0, Lcom/toughstump/event/Event;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->filterUpdated:Lcom/toughstump/event/Event;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    new-instance v0, Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 29
    .line 30
    const/16 v10, 0xff

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    move-object v1, v0

    .line 42
    invoke-direct/range {v1 .. v11}, Lcom/toughstump/atos/filter/AtosFilterCriteria;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Collection;Ljava/util/Collection;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v0}, Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;->setFilterCriteria(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public final getCurrentFilter()Lcom/toughstump/atos/filter/AtosFilterCriteria;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFilterUpdated()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/filter/AtosFilterCriteria;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->filterUpdated:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagState(Ljava/lang/String;)Lcom/toughstump/atos/state/model/AtosTagState;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "uid"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->database:Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;->getTagState(Ljava/lang/String;)Lcom/toughstump/atos/state/model/AtosTagState;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lcom/toughstump/atos/state/model/AtosTagState;

    .line 16
    .line 17
    const/16 v6, 0xe

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v1, v0

    .line 24
    move-object v2, p1

    .line 25
    invoke-direct/range {v1 .. v7}, Lcom/toughstump/atos/state/model/AtosTagState;-><init>(Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->database:Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;->setTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->database:Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;->onDestroy()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setCurrentFilter(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V
    .locals 0
    .param p1    # Lcom/toughstump/atos/filter/AtosFilterCriteria;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 2
    .line 3
    return-void
.end method

.method public final updateFilter(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/filter/AtosFilterCriteria;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "newFilterCriteria"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->currentFilter:Lcom/toughstump/atos/filter/AtosFilterCriteria;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->database:Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;->setFilterCriteria(Lcom/toughstump/atos/filter/AtosFilterCriteria;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->filterUpdated:Lcom/toughstump/event/Event;

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final updateTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/state/model/AtosTagState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tagState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/state/db/AtosStateRepository;->database:Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/toughstump/atos/state/db/IAtosTagStateDatabase;->setTagState(Lcom/toughstump/atos/state/model/AtosTagState;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
