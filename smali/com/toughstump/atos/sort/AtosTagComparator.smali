.class public final Lcom/toughstump/atos/sort/AtosTagComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/toughstump/atos/sort/AtosTagComparator$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/toughstump/atos/state/AtosTag;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/toughstump/atos/sort/AtosTagComparator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EQUAL:I = 0x0

.field public static final FIRST:I = 0x1

.field public static final SECOND:I = -0x1


# instance fields
.field private final currentManifestUid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/toughstump/atos/sort/AtosTagComparator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/toughstump/atos/sort/AtosTagComparator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/toughstump/atos/sort/AtosTagComparator;->Companion:Lcom/toughstump/atos/sort/AtosTagComparator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/toughstump/atos/sort/AtosTagComparator;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/toughstump/atos/sort/AtosTagComparator;->currentManifestUid:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/toughstump/atos/sort/AtosTagComparator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/toughstump/atos/state/AtosTag;Lcom/toughstump/atos/state/AtosTag;)I
    .locals 2
    .param p1    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/toughstump/atos/state/AtosTag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result p1

    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/toughstump/atos/sort/AtosTagComparator;->currentManifestUid:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result v0

    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result p1

    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    :goto_0
    return p1

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/toughstump/atos/sort/AtosTagComparator;->currentManifestUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, -0x1

    return p1

    .line 9
    :cond_3
    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/toughstump/atos/sort/AtosTagComparator;->currentManifestUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result v0

    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getManifestUid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result p1

    invoke-virtual {p2}, Lcom/toughstump/atos/state/AtosTag;->getTagId()I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    :goto_1
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/toughstump/atos/state/AtosTag;

    check-cast p2, Lcom/toughstump/atos/state/AtosTag;

    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/sort/AtosTagComparator;->compare(Lcom/toughstump/atos/state/AtosTag;Lcom/toughstump/atos/state/AtosTag;)I

    move-result p1

    return p1
.end method
