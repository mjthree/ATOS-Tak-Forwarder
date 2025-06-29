.class Lcom/atakmap/android/atos/utilities/RunnableManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/atakmap/android/atos/utilities/RunnableManager;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atakmap/android/atos/utilities/RunnableManager;

.field final synthetic val$toast:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/atakmap/android/atos/utilities/RunnableManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/utilities/RunnableManager$1;->this$0:Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/atakmap/android/atos/utilities/RunnableManager$1;->val$toast:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/utilities/RunnableManager$1;->this$0:Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/utilities/RunnableManager;->access$000(Lcom/atakmap/android/atos/utilities/RunnableManager;)Lcom/atakmap/android/maps/MapView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/atakmap/android/atos/utilities/RunnableManager$1;->val$toast:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
