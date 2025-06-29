.class public final synthetic Latak/core/R8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lkotlin/text/MatcherMatchResult$groups$1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/text/MatcherMatchResult$groups$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latak/core/R8;->a:Lkotlin/text/MatcherMatchResult$groups$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Latak/core/R8;->a:Lkotlin/text/MatcherMatchResult$groups$1;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lkotlin/text/MatcherMatchResult$groups$1;->b(Lkotlin/text/MatcherMatchResult$groups$1;I)Lkotlin/text/MatchGroup;

    move-result-object p1

    return-object p1
.end method
