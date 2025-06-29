.class public final Lkotlinx/coroutines/CancellableContinuationImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final RESUMED:I = 0x2

.field public static final RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SUSPENDED:I = 0x1

.field private static final UNDECIDED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    .line 2
    .line 3
    const-string v1, "RESUME_TOKEN"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImplKt;->RESUME_TOKEN:Lkotlinx/coroutines/internal/Symbol;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic getRESUME_TOKEN$annotations()V
    .locals 0

    return-void
.end method
