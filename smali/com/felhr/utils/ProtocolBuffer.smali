.class public Lcom/felhr/utils/ProtocolBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;
    }
.end annotation


# static fields
.field public static final BINARY:Ljava/lang/String; = "binary"

.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000

.field public static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field private bufferPointer:I

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private delimiter:Ljava/lang/String;

.field private final mode:Ljava/lang/String;

.field private rawBuffer:[B

.field private final rawCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private separator:[B

.field private stringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/felhr/utils/ProtocolBuffer;->bufferPointer:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->commands:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->rawCommands:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/felhr/utils/ProtocolBuffer;->mode:Ljava/lang/String;

    .line 6
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x4000

    if-eqz p1, :cond_0

    .line 7
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/felhr/utils/ProtocolBuffer;->rawBuffer:[B

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/felhr/utils/ProtocolBuffer;->stringBuffer:Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/felhr/utils/ProtocolBuffer;->bufferPointer:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->commands:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->rawCommands:Ljava/util/List;

    .line 13
    iput-object p1, p0, Lcom/felhr/utils/ProtocolBuffer;->mode:Ljava/lang/String;

    .line 14
    const-string v0, "binary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 15
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/felhr/utils/ProtocolBuffer;->rawBuffer:[B

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/felhr/utils/ProtocolBuffer;->stringBuffer:Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/felhr/utils/ProtocolBuffer;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/utils/ProtocolBuffer;->rawBuffer:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/felhr/utils/ProtocolBuffer;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/felhr/utils/ProtocolBuffer;->separator:[B

    .line 2
    .line 3
    return-object p0
.end method

.method private appendRawData([B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->rawBuffer:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/felhr/utils/ProtocolBuffer;->bufferPointer:I

    .line 4
    .line 5
    array-length v2, p1

    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/felhr/utils/ProtocolBuffer;->bufferPointer:I

    .line 11
    .line 12
    array-length v1, p1

    .line 13
    add-int/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/felhr/utils/ProtocolBuffer;->bufferPointer:I

    .line 15
    .line 16
    new-instance v0, Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, Lcom/felhr/utils/ProtocolBuffer$SeparatorPredicate;-><init>(Lcom/felhr/utils/ProtocolBuffer;Lcom/felhr/utils/ProtocolBuffer$1;)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/felhr/utils/ProtocolBuffer;->bufferPointer:I

    .line 23
    .line 24
    invoke-static {v3, v1}, Lcom/annimon/stream/IntStream;->range(II)Lcom/annimon/stream/IntStream;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lcom/annimon/stream/IntStream;->filter(Lcom/annimon/stream/function/IntPredicate;)Lcom/annimon/stream/IntStream;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/annimon/stream/IntStream;->toArray()[I

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    array-length v1, v0

    .line 37
    move v2, v3

    .line 38
    move v4, v2

    .line 39
    :goto_0
    if-ge v2, v1, :cond_0

    .line 40
    .line 41
    aget v5, v0, v2

    .line 42
    .line 43
    iget-object v6, p0, Lcom/felhr/utils/ProtocolBuffer;->rawBuffer:[B

    .line 44
    .line 45
    iget-object v7, p0, Lcom/felhr/utils/ProtocolBuffer;->separator:[B

    .line 46
    .line 47
    array-length v7, v7

    .line 48
    add-int/2addr v7, v5

    .line 49
    invoke-static {v6, v4, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    iget-object v6, p0, Lcom/felhr/utils/ProtocolBuffer;->rawCommands:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lcom/felhr/utils/ProtocolBuffer;->separator:[B

    .line 59
    .line 60
    array-length v4, v4

    .line 61
    add-int/2addr v4, v5

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->rawBuffer:[B

    .line 66
    .line 67
    array-length v1, v0

    .line 68
    if-ge v4, v1, :cond_1

    .line 69
    .line 70
    if-lez v4, :cond_1

    .line 71
    .line 72
    array-length v1, v0

    .line 73
    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput v3, p0, Lcom/felhr/utils/ProtocolBuffer;->bufferPointer:I

    .line 78
    .line 79
    iget-object v1, p0, Lcom/felhr/utils/ProtocolBuffer;->rawBuffer:[B

    .line 80
    .line 81
    array-length v2, p1

    .line 82
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    .line 84
    .line 85
    iget v0, p0, Lcom/felhr/utils/ProtocolBuffer;->bufferPointer:I

    .line 86
    .line 87
    array-length p1, p1

    .line 88
    add-int/2addr v0, p1

    .line 89
    iput v0, p0, Lcom/felhr/utils/ProtocolBuffer;->bufferPointer:I

    .line 90
    .line 91
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized appendData([B)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->mode:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "text"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    new-instance v0, Ljava/lang/String;

    .line 18
    .line 19
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/felhr/utils/ProtocolBuffer;->stringBuffer:Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/felhr/utils/ProtocolBuffer;->stringBuffer:Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->delimiter:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    move v2, v1

    .line 43
    :goto_0
    if-ltz v0, :cond_1

    .line 44
    .line 45
    iget-object v3, p0, Lcom/felhr/utils/ProtocolBuffer;->delimiter:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    add-int/2addr v3, v0

    .line 52
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/felhr/utils/ProtocolBuffer;->commands:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/felhr/utils/ProtocolBuffer;->delimiter:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    add-int/2addr v2, v0

    .line 68
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->stringBuffer:Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget-object v3, p0, Lcom/felhr/utils/ProtocolBuffer;->delimiter:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    if-lez v2, :cond_3

    .line 84
    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->stringBuffer:Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->stringBuffer:Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->mode:Ljava/lang/String;

    .line 101
    .line 102
    const-string v1, "binary"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-direct {p0, p1}, Lcom/felhr/utils/ProtocolBuffer;->appendRawData([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_1
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    throw p1
.end method

.method public hasMoreCommands()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->mode:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "text"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->commands:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    move v1, v2

    .line 22
    :cond_0
    return v1

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->rawCommands:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_2

    .line 30
    .line 31
    move v1, v2

    .line 32
    :cond_2
    return v1
.end method

.method public nextBinaryCommand()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->rawCommands:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->rawCommands:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, [B

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public nextTextCommand()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->commands:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/felhr/utils/ProtocolBuffer;->commands:Ljava/util/List;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/felhr/utils/ProtocolBuffer;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setDelimiter([B)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/felhr/utils/ProtocolBuffer;->separator:[B

    return-void
.end method
