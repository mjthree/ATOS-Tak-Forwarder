.class final Lcom/annimon/stream/function/BooleanPredicate$Util$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/annimon/stream/function/BooleanPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/function/BooleanPredicate$Util;->negate(Lcom/annimon/stream/function/BooleanPredicate;)Lcom/annimon/stream/function/BooleanPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$p1:Lcom/annimon/stream/function/BooleanPredicate;


# direct methods
.method constructor <init>(Lcom/annimon/stream/function/BooleanPredicate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$5;->val$p1:Lcom/annimon/stream/function/BooleanPredicate;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public test(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/annimon/stream/function/BooleanPredicate$Util$5;->val$p1:Lcom/annimon/stream/function/BooleanPredicate;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/annimon/stream/function/BooleanPredicate;->test(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    return p1
.end method
