.class public final synthetic Landroidx/core/location/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

.field public final synthetic b:Ljava/util/concurrent/Executor;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/w;->a:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    iput-object p2, p0, Landroidx/core/location/w;->b:Ljava/util/concurrent/Executor;

    iput p3, p0, Landroidx/core/location/w;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/location/w;->a:Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;

    iget-object v1, p0, Landroidx/core/location/w;->b:Ljava/util/concurrent/Executor;

    iget v2, p0, Landroidx/core/location/w;->c:I

    invoke-static {v0, v1, v2}, Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;->b(Landroidx/core/location/LocationManagerCompat$GnssMeasurementsTransport;Ljava/util/concurrent/Executor;I)V

    return-void
.end method
