.class Lcom/atakmap/android/atos/utilities/RunnableManager$2;
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
    iput-object p1, p0, Lcom/atakmap/android/atos/utilities/RunnableManager$2;->this$0:Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/atakmap/android/atos/utilities/RunnableManager$2;->val$toast:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/atakmap/android/atos/utilities/RunnableManager$2;->this$0:Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/utilities/RunnableManager;->access$100(Lcom/atakmap/android/atos/utilities/RunnableManager;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/atakmap/android/atos/utilities/RunnableManager$2;->val$toast:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
