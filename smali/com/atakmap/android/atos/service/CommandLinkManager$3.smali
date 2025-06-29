.class Lcom/atakmap/android/atos/service/CommandLinkManager$3;
.super Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atakmap/android/atos/service/CommandLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;


# direct methods
.method constructor <init>(Lcom/atakmap/android/atos/service/CommandLinkManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/atakmap/android/atos/accessory/service/ICommandLinkStatusListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->lambda$onStatusUpdated$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/atakmap/android/atos/service/CommandLinkManager$3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->lambda$onStatusUpdated$1()V

    return-void
.end method

.method private static synthetic lambda$onStatusUpdated$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->INSTANCE:Lcom/toughstump/atos/service/CommandLinkStatusProvider;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/toughstump/atos/service/CommandLinkStatusProvider;->updateConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onStatusUpdated$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$1100(Lcom/atakmap/android/atos/service/CommandLinkManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStatusUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$400(Lcom/atakmap/android/atos/service/CommandLinkManager;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p1, :cond_5

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$600(Lcom/atakmap/android/atos/service/CommandLinkManager;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$708(Lcom/atakmap/android/atos/service/CommandLinkManager;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$700(Lcom/atakmap/android/atos/service/CommandLinkManager;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/16 v1, 0xa

    .line 43
    .line 44
    if-eq v0, v1, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$702(Lcom/atakmap/android/atos/service/CommandLinkManager;I)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 54
    .line 55
    invoke-static {v0, p1}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$602(Lcom/atakmap/android/atos/service/CommandLinkManager;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 59
    .line 60
    invoke-static {v0, p2}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$802(Lcom/atakmap/android/atos/service/CommandLinkManager;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/atakmap/android/atos/service/c;

    .line 68
    .line 69
    invoke-direct {v1, p1, p2}, Lcom/atakmap/android/atos/service/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/atakmap/android/atos/utilities/RunnableManager;->post(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "ERROR"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    const-string p1, "ATOS_BT_PERMISSIONS"

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$900(Lcom/atakmap/android/atos/service/CommandLinkManager;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_3

    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$1000(Lcom/atakmap/android/atos/service/CommandLinkManager;)Landroid/app/AlertDialog;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    iget-object p1, p0, Lcom/atakmap/android/atos/service/CommandLinkManager$3;->this$0:Lcom/atakmap/android/atos/service/CommandLinkManager;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/atakmap/android/atos/service/CommandLinkManager;->access$1000(Lcom/atakmap/android/atos/service/CommandLinkManager;)Landroid/app/AlertDialog;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    return-void

    .line 121
    :cond_4
    invoke-static {}, Lcom/atakmap/android/atos/utilities/RunnableManager;->getInstance()Lcom/atakmap/android/atos/utilities/RunnableManager;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    new-instance p2, Lcom/atakmap/android/atos/service/d;

    .line 126
    .line 127
    invoke-direct {p2, p0}, Lcom/atakmap/android/atos/service/d;-><init>(Lcom/atakmap/android/atos/service/CommandLinkManager$3;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Lcom/atakmap/android/atos/utilities/RunnableManager;->post(Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    :goto_0
    return-void
.end method
