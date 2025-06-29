.class public abstract Lkot/Overtaking;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkot/Overtaking$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkot/Overtaking$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final symbol:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkot/Overtaking$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkot/Overtaking$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkot/Overtaking;->Companion:Lkot/Overtaking$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkot/Overtaking;->symbol:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkot/Overtaking;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final fromString$core(Ljava/lang/String;)Lkot/Overtaking;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkot/Overtaking;->Companion:Lkot/Overtaking$Companion;

    invoke-virtual {v0, p0}, Lkot/Overtaking$Companion;->fromString$core(Ljava/lang/String;)Lkot/Overtaking;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getSymbol()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/Overtaking;->symbol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkot/Overtaking;->symbol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
