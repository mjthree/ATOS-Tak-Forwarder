.class public final Lkot/Highest;
.super Lkot/Priority;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkot/Highest;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkot/Highest;

    invoke-direct {v0}, Lkot/Highest;-><init>()V

    sput-object v0, Lkot/Highest;->INSTANCE:Lkot/Highest;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lkot/Priority;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
