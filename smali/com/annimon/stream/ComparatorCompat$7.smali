.class final Lcom/annimon/stream/ComparatorCompat$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/ComparatorCompat;->comparingDouble(Lcom/annimon/stream/function/ToDoubleFunction;)Lcom/annimon/stream/ComparatorCompat;
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
.field final synthetic val$keyExtractor:Lcom/annimon/stream/function/ToDoubleFunction;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/ToDoubleFunction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/ComparatorCompat$7;->val$keyExtractor:Lcom/annimon/stream/function/ToDoubleFunction;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$7;->val$keyExtractor:Lcom/annimon/stream/function/ToDoubleFunction;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p1, p0, Lcom/annimon/stream/ComparatorCompat$7;->val$keyExtractor:Lcom/annimon/stream/function/ToDoubleFunction;

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lcom/annimon/stream/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
