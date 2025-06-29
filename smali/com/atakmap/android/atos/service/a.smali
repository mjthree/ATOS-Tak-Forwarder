.class public final synthetic Lcom/atakmap/android/atos/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/atakmap/android/atos/service/a;->a:I

    iput-wide p2, p0, Lcom/atakmap/android/atos/service/a;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/atakmap/android/atos/service/a;->a:I

    iget-wide v1, p0, Lcom/atakmap/android/atos/service/a;->b:J

    invoke-static {v0, v1, v2}, Lcom/atakmap/android/atos/service/CommandLinkManager$2;->b(IJ)V

    return-void
.end method
