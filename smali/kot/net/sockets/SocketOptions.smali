.class public final Lkot/net/sockets/SocketOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkot/net/sockets/SocketOptions$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkot/net/sockets/SocketOptions$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final DEFAULT_READ_TIMEOUT:I


# instance fields
.field private final broadcast:Z

.field private final bufferSize:I

.field private final readTimeout:I

.field private final reuseAddress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkot/net/sockets/SocketOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkot/net/sockets/SocketOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkot/net/sockets/SocketOptions;->Companion:Lkot/net/sockets/SocketOptions$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lkot/net/sockets/SocketOptions;-><init>(ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lkot/net/sockets/SocketOptions;->reuseAddress:Z

    .line 4
    iput-boolean p2, p0, Lkot/net/sockets/SocketOptions;->broadcast:Z

    .line 5
    iput p3, p0, Lkot/net/sockets/SocketOptions;->bufferSize:I

    .line 6
    iput p4, p0, Lkot/net/sockets/SocketOptions;->readTimeout:I

    return-void
.end method

.method public synthetic constructor <init>(ZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/16 p3, 0x1000

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lkot/net/sockets/SocketOptions;-><init>(ZZII)V

    return-void
.end method

.method public static synthetic copy$default(Lkot/net/sockets/SocketOptions;ZZIIILjava/lang/Object;)Lkot/net/sockets/SocketOptions;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lkot/net/sockets/SocketOptions;->reuseAddress:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lkot/net/sockets/SocketOptions;->broadcast:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lkot/net/sockets/SocketOptions;->bufferSize:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lkot/net/sockets/SocketOptions;->readTimeout:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lkot/net/sockets/SocketOptions;->copy(ZZII)Lkot/net/sockets/SocketOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lkot/net/sockets/SocketOptions;->reuseAddress:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lkot/net/sockets/SocketOptions;->broadcast:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lkot/net/sockets/SocketOptions;->bufferSize:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lkot/net/sockets/SocketOptions;->readTimeout:I

    return v0
.end method

.method public final copy(ZZII)Lkot/net/sockets/SocketOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkot/net/sockets/SocketOptions;

    invoke-direct {v0, p1, p2, p3, p4}, Lkot/net/sockets/SocketOptions;-><init>(ZZII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkot/net/sockets/SocketOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkot/net/sockets/SocketOptions;

    iget-boolean v1, p0, Lkot/net/sockets/SocketOptions;->reuseAddress:Z

    iget-boolean v3, p1, Lkot/net/sockets/SocketOptions;->reuseAddress:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lkot/net/sockets/SocketOptions;->broadcast:Z

    iget-boolean v3, p1, Lkot/net/sockets/SocketOptions;->broadcast:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lkot/net/sockets/SocketOptions;->bufferSize:I

    iget v3, p1, Lkot/net/sockets/SocketOptions;->bufferSize:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lkot/net/sockets/SocketOptions;->readTimeout:I

    iget p1, p1, Lkot/net/sockets/SocketOptions;->readTimeout:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBroadcast()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkot/net/sockets/SocketOptions;->broadcast:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getBufferSize()I
    .locals 1

    .line 1
    iget v0, p0, Lkot/net/sockets/SocketOptions;->bufferSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lkot/net/sockets/SocketOptions;->readTimeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReuseAddress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkot/net/sockets/SocketOptions;->reuseAddress:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lkot/net/sockets/SocketOptions;->reuseAddress:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkot/net/sockets/SocketOptions;->broadcast:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkot/net/sockets/SocketOptions;->bufferSize:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkot/net/sockets/SocketOptions;->readTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketOptions(reuseAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkot/net/sockets/SocketOptions;->reuseAddress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", broadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkot/net/sockets/SocketOptions;->broadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bufferSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkot/net/sockets/SocketOptions;->bufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", readTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkot/net/sockets/SocketOptions;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
