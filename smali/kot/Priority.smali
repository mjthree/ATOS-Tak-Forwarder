.class public abstract Lkot/Priority;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkot/Priority$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkot/Priority$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkot/Priority$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkot/Priority$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkot/Priority;->Companion:Lkot/Priority$Companion;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkot/Priority;->value:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkot/Priority;-><init>(I)V

    return-void
.end method

.method public static final fromInt(I)Lkot/Priority;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkot/Priority;->Companion:Lkot/Priority$Companion;

    invoke-virtual {v0, p0}, Lkot/Priority$Companion;->fromInt(I)Lkot/Priority;

    move-result-object p0

    return-object p0
.end method

.method public static final fromString$core(Ljava/lang/String;)Lkot/Priority;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkot/Priority;->Companion:Lkot/Priority$Companion;

    invoke-virtual {v0, p0}, Lkot/Priority$Companion;->fromString$core(Ljava/lang/String;)Lkot/Priority;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lkot/Priority;->value:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lkot/Priority;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
