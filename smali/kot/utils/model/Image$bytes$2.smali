.class final Lkot/utils/model/Image$bytes$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkot/utils/model/Image;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Float;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkot/utils/model/Image;


# direct methods
.method constructor <init>(Lkot/utils/model/Image;)V
    .locals 0

    iput-object p1, p0, Lkot/utils/model/Image$bytes$2;->this$0:Lkot/utils/model/Image;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkot/utils/model/Image$bytes$2;->invoke()[B

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[B
    .locals 2

    .line 2
    invoke-static {}, Latakplugin/atos/T;->a()Ljava/util/Base64$Decoder;

    move-result-object v0

    iget-object v1, p0, Lkot/utils/model/Image$bytes$2;->this$0:Lkot/utils/model/Image;

    invoke-virtual {v1}, Lkot/utils/model/Image;->getBase64Encoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Latakplugin/atos/U;->a(Ljava/util/Base64$Decoder;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
