.class public final Lkot/Priority$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkot/Priority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkot/Priority$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromInt(I)Lkot/Priority;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lkot/Lowest;->INSTANCE:Lkot/Lowest;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x5

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    sget-object p1, Lkot/Mid;->INSTANCE:Lkot/Mid;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/16 v0, 0x9

    .line 13
    .line 14
    if-lt p1, v0, :cond_2

    .line 15
    .line 16
    sget-object p1, Lkot/Highest;->INSTANCE:Lkot/Highest;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    new-instance v0, Lkot/Imprecise;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lkot/Imprecise;-><init>(I)V

    .line 22
    .line 23
    .line 24
    move-object p1, v0

    .line 25
    :goto_0
    return-object p1
.end method

.method public final fromString$core(Ljava/lang/String;)Lkot/Priority;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "string"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Lkot/Priority$Companion;->fromInt(I)Lkot/Priority;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
