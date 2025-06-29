.class public final Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtosVisibleTagOrganizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtosVisibleTagOrganizer.kt\ncom/toughstump/atos/sort/AtosVisibleTagOrganizer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1849#2,2:146\n348#2,7:148\n1849#2,2:155\n348#2,7:157\n*S KotlinDebug\n*F\n+ 1 AtosVisibleTagOrganizer.kt\ncom/toughstump/atos/sort/AtosVisibleTagOrganizer\n*L\n32#1:146,2\n42#1:148,7\n57#1:155,2\n72#1:157,7\n*E\n"
.end annotation


# instance fields
.field private comparator:Lcom/toughstump/atos/sort/AtosTagComparator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentManifestUid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private eventsEnabled:Z

.field private final insertEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/sort/TagListEventArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final newListEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final removeEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/sort/TagListEventArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final updateEvent:Lcom/toughstump/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/sort/TagListEventArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Lcom/toughstump/atos/sort/AtosTagComparator;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v0, v1, v2, v1}, Lcom/toughstump/atos/sort/AtosTagComparator;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->comparator:Lcom/toughstump/atos/sort/AtosTagComparator;

    .line 26
    .line 27
    new-instance v0, Lcom/toughstump/event/Event;

    .line 28
    .line 29
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->newListEvent:Lcom/toughstump/event/Event;

    .line 33
    .line 34
    new-instance v0, Lcom/toughstump/event/Event;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->updateEvent:Lcom/toughstump/event/Event;

    .line 40
    .line 41
    new-instance v0, Lcom/toughstump/event/Event;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->insertEvent:Lcom/toughstump/event/Event;

    .line 47
    .line 48
    new-instance v0, Lcom/toughstump/event/Event;

    .line 49
    .line 50
    invoke-direct {v0}, Lcom/toughstump/event/Event;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->removeEvent:Lcom/toughstump/event/Event;

    .line 54
    .line 55
    iput-boolean v2, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->eventsEnabled:Z

    .line 56
    .line 57
    return-void
.end method

.method private final insertTag(Lcom/toughstump/atos/state/AtosTag;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->comparator:Lcom/toughstump/atos/sort/AtosTagComparator;

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gez v0, :cond_0

    .line 10
    .line 11
    neg-int v0, v0

    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->eventsEnabled:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->insertEvent:Lcom/toughstump/event/Event;

    .line 24
    .line 25
    new-instance v2, Lcom/toughstump/atos/sort/TagListEventArgs;

    .line 26
    .line 27
    invoke-direct {v2, v0, p1}, Lcom/toughstump/atos/sort/TagListEventArgs;-><init>(ILcom/toughstump/atos/state/AtosTag;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0, v2}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return v0
.end method

.method private final update(ILcom/toughstump/atos/state/AtosTag;)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-boolean v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->eventsEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->updateEvent:Lcom/toughstump/event/Event;

    new-instance v1, Lcom/toughstump/atos/sort/TagListEventArgs;

    invoke-direct {v1, p1, p2}, Lcom/toughstump/atos/sort/TagListEventArgs;-><init>(ILcom/toughstump/atos/state/AtosTag;)V

    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getInsertEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/sort/TagListEventArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->insertEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNewListEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->newListEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRemoveEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/sort/TagListEventArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->removeEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTagMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUpdateEvent()Lcom/toughstump/event/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/toughstump/event/Event<",
            "Lcom/toughstump/atos/sort/TagListEventArgs;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->updateEvent:Lcom/toughstump/event/Event;

    .line 2
    .line 3
    return-object v0
.end method

.method public final refreshTagList(Ljava/util/Collection;)V
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/toughstump/atos/state/AtosTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "tags"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagMap:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->eventsEnabled:Z

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/toughstump/atos/state/AtosTag;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->isVisible()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iget-object v1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagMap:Ljava/util/Map;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->update(Lcom/toughstump/atos/state/AtosTag;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->eventsEnabled:Z

    .line 56
    .line 57
    iget-object p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->newListEvent:Lcom/toughstump/event/Event;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 60
    .line 61
    invoke-virtual {p1, p0, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final removeTag(Lcom/toughstump/atos/state/AtosTag;)I
    .locals 5
    .param p1    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/toughstump/atos/state/AtosTag;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v2, v0

    .line 43
    :goto_1
    if-eq v2, v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagMap:Ljava/util/Map;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    iget-boolean v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->eventsEnabled:Z

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->removeEvent:Lcom/toughstump/event/Event;

    .line 64
    .line 65
    new-instance v1, Lcom/toughstump/atos/sort/TagListEventArgs;

    .line 66
    .line 67
    invoke-direct {v1, v2, p1}, Lcom/toughstump/atos/sort/TagListEventArgs;-><init>(ILcom/toughstump/atos/state/AtosTag;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0, v1}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return v2
.end method

.method public final setCurrentManifestUid(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->currentManifestUid:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->currentManifestUid:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p1, Lcom/toughstump/atos/sort/AtosTagComparator;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->currentManifestUid:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/toughstump/atos/sort/AtosTagComparator;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->comparator:Lcom/toughstump/atos/sort/AtosTagComparator;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->eventsEnabled:Z

    .line 23
    .line 24
    iget-object p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagMap:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/toughstump/atos/state/AtosTag;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/toughstump/atos/state/AtosTag;->isVisible()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->update(Lcom/toughstump/atos/state/AtosTag;)I

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->eventsEnabled:Z

    .line 63
    .line 64
    iget-object p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->newListEvent:Lcom/toughstump/event/Event;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 67
    .line 68
    invoke-virtual {p1, p0, v0}, Lcom/toughstump/event/Event;->invoke(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final setTagList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/toughstump/atos/state/AtosTag;",
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
    iput-object p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setTagMap(Ljava/util/Map;)V
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
            "Lcom/toughstump/atos/state/AtosTag;",
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
    iput-object p1, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagMap:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public final update(Lcom/toughstump/atos/state/AtosTag;)I
    .locals 5
    .param p1    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/toughstump/atos/state/AtosTag;

    .line 3
    invoke-virtual {p0, p1}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->removeTag(Lcom/toughstump/atos/state/AtosTag;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->tagList:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Lcom/toughstump/atos/state/AtosTag;

    .line 8
    invoke-virtual {v2}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-eq v1, v3, :cond_3

    .line 9
    invoke-direct {p0, v1, p1}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->update(ILcom/toughstump/atos/state/AtosTag;)V

    return v1

    .line 10
    :cond_3
    invoke-direct {p0, p1}, Lcom/toughstump/atos/sort/AtosVisibleTagOrganizer;->insertTag(Lcom/toughstump/atos/state/AtosTag;)I

    move-result p1

    return p1
.end method
