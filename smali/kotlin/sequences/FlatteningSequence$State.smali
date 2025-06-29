.class final Lkotlin/sequences/FlatteningSequence$State;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/sequences/FlatteningSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# static fields
.field public static final DONE:I = 0x2

.field public static final INSTANCE:Lkotlin/sequences/FlatteningSequence$State;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final READY:I = 0x1

.field public static final UNDEFINED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/sequences/FlatteningSequence$State;

    invoke-direct {v0}, Lkotlin/sequences/FlatteningSequence$State;-><init>()V

    sput-object v0, Lkotlin/sequences/FlatteningSequence$State;->INSTANCE:Lkotlin/sequences/FlatteningSequence$State;

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
