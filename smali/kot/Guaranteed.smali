.class public final Lkot/Guaranteed;
.super Lkot/Assurance;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkot/Guaranteed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkot/Guaranteed;

    invoke-direct {v0}, Lkot/Guaranteed;-><init>()V

    sput-object v0, Lkot/Guaranteed;->INSTANCE:Lkot/Guaranteed;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "g"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lkot/Assurance;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
