.class Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/IntPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felhr/utils/ProtocolBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeparatorPredicate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felhr/utils/ProtocolBuffer;


# direct methods
.method private constructor <init>(Lcom/felhr/utils/ProtocolBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;->this$0:Lcom/felhr/utils/ProtocolBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/felhr/utils/ProtocolBuffer;Lcom/felhr/utils/ProtocolBuffer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;-><init>(Lcom/felhr/utils/ProtocolBuffer;)V

    return-void
.end method


# virtual methods
.method public test(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;->this$0:Lcom/felhr/utils/ProtocolBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/felhr/utils/ProtocolBuffer;->access$100(Lcom/felhr/utils/ProtocolBuffer;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    aget-byte v0, v0, p1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;->this$0:Lcom/felhr/utils/ProtocolBuffer;

    .line 10
    .line 11
    invoke-static {v1}, Lcom/felhr/utils/ProtocolBuffer;->access$200(Lcom/felhr/utils/ProtocolBuffer;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    aget-byte v1, v1, v2

    .line 17
    .line 18
    if-ne v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    move v1, v0

    .line 22
    :goto_0
    iget-object v3, p0, Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;->this$0:Lcom/felhr/utils/ProtocolBuffer;

    .line 23
    .line 24
    invoke-static {v3}, Lcom/felhr/utils/ProtocolBuffer;->access$200(Lcom/felhr/utils/ProtocolBuffer;)[B

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    array-length v3, v3

    .line 29
    sub-int/2addr v3, v0

    .line 30
    if-gt v1, v3, :cond_1

    .line 31
    .line 32
    iget-object v3, p0, Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;->this$0:Lcom/felhr/utils/ProtocolBuffer;

    .line 33
    .line 34
    invoke-static {v3}, Lcom/felhr/utils/ProtocolBuffer;->access$100(Lcom/felhr/utils/ProtocolBuffer;)[B

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    add-int v4, p1, v1

    .line 39
    .line 40
    aget-byte v3, v3, v4

    .line 41
    .line 42
    iget-object v4, p0, Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;->this$0:Lcom/felhr/utils/ProtocolBuffer;

    .line 43
    .line 44
    invoke-static {v4}, Lcom/felhr/utils/ProtocolBuffer;->access$200(Lcom/felhr/utils/ProtocolBuffer;)[B

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    aget-byte v4, v4, v1

    .line 49
    .line 50
    if-eq v3, v4, :cond_0

    .line 51
    .line 52
    return v2

    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return v0

    .line 57
    :cond_2
    return v2
.end method
