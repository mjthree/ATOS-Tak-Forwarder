.class final Lkot/KotTime$local$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkot/KotTime;-><init>(Ljava/time/OffsetDateTime;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/time/LocalDateTime;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkot/KotTime;


# direct methods
.method constructor <init>(Lkot/KotTime;)V
    .locals 0

    iput-object p1, p0, Lkot/KotTime$local$2;->this$0:Lkot/KotTime;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkot/KotTime$local$2;->invoke()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/time/LocalDateTime;
    .locals 2

    .line 2
    iget-object v0, p0, Lkot/KotTime$local$2;->this$0:Lkot/KotTime;

    invoke-static {v0}, Lkot/KotTime;->access$getUnderlying$p(Lkot/KotTime;)Ljava/time/OffsetDateTime;

    move-result-object v0

    invoke-static {}, Latakplugin/atos/H0;->a()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Latakplugin/atos/e1;->a(Ljava/time/OffsetDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-static {v0}, Latakplugin/atos/f1;->a(Ljava/time/ZonedDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method
