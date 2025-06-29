.class public final Lkot/Independent;
.super Lkot/Overtaking;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkot/Independent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkot/Independent;

    invoke-direct {v0}, Lkot/Independent;-><init>()V

    sput-object v0, Lkot/Independent;->INSTANCE:Lkot/Independent;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "i"

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
