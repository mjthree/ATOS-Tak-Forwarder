.class public final Lcom/toughstump/atos/service/CommandLinkStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/toughstump/atos/service/CommandLinkStatus;-><init>(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 4
    iput-object p2, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 5
    sget-object p1, Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;->OFF:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 6
    const-string p2, ""

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/toughstump/atos/service/CommandLinkStatus;-><init>(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/toughstump/atos/service/CommandLinkStatus;Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;ILjava/lang/Object;)Lcom/toughstump/atos/service/CommandLinkStatus;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->message:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/toughstump/atos/service/CommandLinkStatus;->copy(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)Lcom/toughstump/atos/service/CommandLinkStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)Lcom/toughstump/atos/service/CommandLinkStatus;
    .locals 1
    .param p1    # Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/toughstump/atos/service/CommandLinkStatus;

    invoke-direct {v0, p1, p2}, Lcom/toughstump/atos/service/CommandLinkStatus;-><init>(Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;Ljava/lang/String;)V

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
    instance-of v1, p1, Lcom/toughstump/atos/service/CommandLinkStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/toughstump/atos/service/CommandLinkStatus;

    iget-object v1, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    iget-object v3, p1, Lcom/toughstump/atos/service/CommandLinkStatus;->state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/toughstump/atos/service/CommandLinkStatus;->message:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getState()Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->message:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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

    const-string v1, "CommandLinkStatus(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->state:Lcom/atakmap/android/atos/accessory/service/enums/ConnectionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/toughstump/atos/service/CommandLinkStatus;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
