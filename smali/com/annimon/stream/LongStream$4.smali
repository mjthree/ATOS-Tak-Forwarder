.class Lcom/annimon/stream/LongStream$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/LongBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/LongStream;->findLast()Lcom/annimon/stream/OptionalLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/annimon/stream/LongStream;


# direct methods
.method constructor <init>(Lcom/annimon/stream/LongStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/LongStream$4;->this$0:Lcom/annimon/stream/LongStream;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public applyAsLong(JJ)J
    .locals 0

    return-wide p3
.end method
