.class public Lcom/annimon/stream/function/BooleanConsumer$Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/annimon/stream/function/BooleanConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static andThen(Lcom/annimon/stream/function/BooleanConsumer;Lcom/annimon/stream/function/BooleanConsumer;)Lcom/annimon/stream/function/BooleanConsumer;
    .locals 1

    .line 1
    new-instance v0, Lcom/annimon/stream/function/BooleanConsumer$Util$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/annimon/stream/function/BooleanConsumer$Util$1;-><init>(Lcom/annimon/stream/function/BooleanConsumer;Lcom/annimon/stream/function/BooleanConsumer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
