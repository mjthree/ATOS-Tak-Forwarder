.class final Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/viewmodel/CreationExtras$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewModelKeyImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/viewmodel/CreationExtras$Key<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl;-><init>()V

    sput-object v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl;->INSTANCE:Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion$ViewModelKeyImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
