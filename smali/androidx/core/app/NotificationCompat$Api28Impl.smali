.class Landroidx/core/app/NotificationCompat$Api28Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static getSemanticAction(Landroid/app/Notification$Action;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
