.class Landroidx/fragment/app/SpecialEffectsController$Operation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/SpecialEffectsController$Operation;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/SpecialEffectsController$Operation;


# direct methods
.method constructor <init>(Landroidx/fragment/app/SpecialEffectsController$Operation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController$Operation$1;->this$0:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController$Operation$1;->this$0:Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
