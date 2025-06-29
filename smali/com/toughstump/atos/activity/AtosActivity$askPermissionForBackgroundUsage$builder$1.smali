.class final Lcom/toughstump/atos/activity/AtosActivity$askPermissionForBackgroundUsage$builder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/toughstump/atos/activity/AtosActivity;->askPermissionForBackgroundUsage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/toughstump/atos/activity/AtosActivity;


# direct methods
.method constructor <init>(Lcom/toughstump/atos/activity/AtosActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/toughstump/atos/activity/AtosActivity$askPermissionForBackgroundUsage$builder$1;->this$0:Lcom/toughstump/atos/activity/AtosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/toughstump/atos/activity/AtosActivity$askPermissionForBackgroundUsage$builder$1;->this$0:Lcom/toughstump/atos/activity/AtosActivity;

    .line 2
    .line 3
    const-string p2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 4
    .line 5
    filled-new-array {p2}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/16 v0, 0x107f

    .line 10
    .line 11
    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
