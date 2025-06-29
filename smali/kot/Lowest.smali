.class public final Lkot/Lowest;
.super Lkot/Priority;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkot/Lowest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkot/Lowest;

    invoke-direct {v0}, Lkot/Lowest;-><init>()V

    sput-object v0, Lkot/Lowest;->INSTANCE:Lkot/Lowest;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lkot/Priority;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
