.class public final Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final triggerMode:Lcom/toughstump/atos/record/route/TriggerMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final triggerValue:I


# direct methods
.method public constructor <init>(Lcom/toughstump/atos/record/route/TriggerMode;I)V
    .locals 1
    .param p1    # Lcom/toughstump/atos/record/route/TriggerMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "triggerMode"

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
    iput-object p1, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerMode:Lcom/toughstump/atos/record/route/TriggerMode;

    .line 10
    .line 11
    iput p2, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerValue:I

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;Lcom/toughstump/atos/record/route/TriggerMode;IILjava/lang/Object;)Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerMode:Lcom/toughstump/atos/record/route/TriggerMode;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerValue:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->copy(Lcom/toughstump/atos/record/route/TriggerMode;I)Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/toughstump/atos/record/route/TriggerMode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerMode:Lcom/toughstump/atos/record/route/TriggerMode;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerValue:I

    return v0
.end method

.method public final copy(Lcom/toughstump/atos/record/route/TriggerMode;I)Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;
    .locals 1
    .param p1    # Lcom/toughstump/atos/record/route/TriggerMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "triggerMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;

    invoke-direct {v0, p1, p2}, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;-><init>(Lcom/toughstump/atos/record/route/TriggerMode;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerMode:Lcom/toughstump/atos/record/route/TriggerMode;

    iget-object v3, p1, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerMode:Lcom/toughstump/atos/record/route/TriggerMode;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerValue:I

    iget p1, p1, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerValue:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getTriggerMode()Lcom/toughstump/atos/record/route/TriggerMode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerMode:Lcom/toughstump/atos/record/route/TriggerMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTriggerValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerValue:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerMode:Lcom/toughstump/atos/record/route/TriggerMode;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerValue:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TakRouteConditionalNavigationQueue(triggerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerMode:Lcom/toughstump/atos/record/route/TriggerMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", triggerValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/toughstump/atos/record/route/TakRouteConditionalNavigationQueue;->triggerValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
