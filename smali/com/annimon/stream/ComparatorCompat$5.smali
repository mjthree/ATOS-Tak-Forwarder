.class final Lcom/annimon/stream/ComparatorCompat$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/ComparatorCompat;->comparingInt(Lcom/annimon/stream/function/ToIntFunction;)Lcom/annimon/stream/ComparatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$keyExtractor:Lcom/annimon/stream/function/ToIntFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ToIntFunction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/ComparatorCompat$5;->val$keyExtractor:Lcom/annimon/stream/function/ToIntFunction;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$5;->val$keyExtractor:Lcom/annimon/stream/function/ToIntFunction;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$5;->val$keyExtractor:Lcom/annimon/stream/function/ToIntFunction;

    .line 8
    .line 9
    invoke-interface {v0, p2}, Lcom/annimon/stream/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {p1, p2}, Lcom/annimon/stream/Objects;->compareInt(II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
