.class public final Lkotlinx/coroutines/scheduling/TasksKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BlockingContext:Lkotlinx/coroutines/scheduling/TaskContext;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CORE_POOL_SIZE:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final DEFAULT_SCHEDULER_NAME:Ljava/lang/String; = "DefaultDispatcher"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final IDLE_WORKER_KEEP_ALIVE_NS:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final MAX_POOL_SIZE:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final NonBlockingContext:Lkotlinx/coroutines/scheduling/TaskContext;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TASK_NON_BLOCKING:I = 0x0

.field public static final TASK_PROBABLY_BLOCKING:I = 0x1

.field public static final WORK_STEALING_TIME_RESOLUTION_NS:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static schedulerTimeSource:Lkotlinx/coroutines/scheduling/SchedulerTimeSource;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v7, 0xc

    .line 2
    .line 3
    const/4 v8, 0x0

    .line 4
    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    .line 5
    .line 6
    const-wide/32 v1, 0x186a0

    .line 7
    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    invoke-static/range {v0 .. v8}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp$default(Ljava/lang/String;JJJILjava/lang/Object;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    .line 18
    .line 19
    invoke-static {}, Lkotlinx/coroutines/internal/SystemPropsKt;->getAVAILABLE_PROCESSORS()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/16 v6, 0x8

    .line 29
    .line 30
    const/4 v7, 0x0

    .line 31
    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp$default(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->CORE_POOL_SIZE:I

    .line 40
    .line 41
    const/4 v5, 0x4

    .line 42
    const/4 v6, 0x0

    .line 43
    const-string v1, "kotlinx.coroutines.scheduler.max.pool.size"

    .line 44
    .line 45
    const v2, 0x1ffffe

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    const v4, 0x1ffffe

    .line 50
    .line 51
    .line 52
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp$default(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sput v0, Lkotlinx/coroutines/scheduling/TasksKt;->MAX_POOL_SIZE:I

    .line 57
    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    .line 60
    const/16 v8, 0xc

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    const-string v1, "kotlinx.coroutines.scheduler.keep.alive.sec"

    .line 64
    .line 65
    const-wide/16 v2, 0x3c

    .line 66
    .line 67
    const-wide/16 v4, 0x0

    .line 68
    .line 69
    const-wide/16 v6, 0x0

    .line 70
    .line 71
    invoke-static/range {v1 .. v9}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp$default(Ljava/lang/String;JJJILjava/lang/Object;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    sput-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->IDLE_WORKER_KEEP_ALIVE_NS:J

    .line 80
    .line 81
    sget-object v0, Lkotlinx/coroutines/scheduling/NanoTimeSource;->INSTANCE:Lkotlinx/coroutines/scheduling/NanoTimeSource;

    .line 82
    .line 83
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/SchedulerTimeSource;

    .line 84
    .line 85
    new-instance v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/TaskContextImpl;-><init>(I)V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->NonBlockingContext:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 92
    .line 93
    new-instance v0, Lkotlinx/coroutines/scheduling/TaskContextImpl;

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/TaskContextImpl;-><init>(I)V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->BlockingContext:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 100
    .line 101
    return-void
.end method

.method public static final isBlocking(Lkotlinx/coroutines/scheduling/Task;)Z
    .locals 1
    .param p0    # Lkotlinx/coroutines/scheduling/Task;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
