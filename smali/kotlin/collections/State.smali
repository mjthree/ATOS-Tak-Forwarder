.class final Lkotlin/collections/State;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DONE:I = 0x2

.field public static final FAILED:I = 0x3

.field public static final INSTANCE:Lkotlin/collections/State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOT_READY:I = 0x0

.field public static final READY:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/collections/State;

    invoke-direct {v0}, Lkotlin/collections/State;-><init>()V

    sput-object v0, Lkotlin/collections/State;->INSTANCE:Lkotlin/collections/State;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
