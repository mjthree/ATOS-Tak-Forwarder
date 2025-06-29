.class Lcom/annimon/stream/ComparatorCompat$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/ComparatorCompat;->thenComparing(Ljava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/annimon/stream/ComparatorCompat;

.field final synthetic val$other:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/annimon/stream/ComparatorCompat;Ljava/util/Comparator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/ComparatorCompat$9;->this$0:Lcom/annimon/stream/ComparatorCompat;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/annimon/stream/ComparatorCompat$9;->val$other:Ljava/util/Comparator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$9;->this$0:Lcom/annimon/stream/ComparatorCompat;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/annimon/stream/ComparatorCompat;->access$000(Lcom/annimon/stream/ComparatorCompat;)Ljava/util/Comparator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$9;->val$other:Ljava/util/Comparator;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    return v0
.end method
