.class public final Lkot/Replace;
.super Lkot/Overtaking;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkot/Replace;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkot/Replace;

    invoke-direct {v0}, Lkot/Replace;-><init>()V

    sput-object v0, Lkot/Replace;->INSTANCE:Lkot/Replace;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "r"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lkot/Overtaking;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
