.class public final Latak/core/C;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "-DeprecatedUpgrade"
.end annotation


# static fields
.field private static final a:Latak/core/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Latak/core/D;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Latak/core/B;->a:Latak/core/B;

    .line 2
    .line 3
    sput-object v0, Latak/core/C;->a:Latak/core/B;

    .line 4
    .line 5
    sget-object v0, Latak/core/D;->a:Latak/core/D;

    .line 6
    .line 7
    sput-object v0, Latak/core/C;->b:Latak/core/D;

    .line 8
    .line 9
    return-void
.end method

.method public static final a()Latak/core/B;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/C;->a:Latak/core/B;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b()Latak/core/D;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Latak/core/C;->b:Latak/core/D;

    .line 2
    .line 3
    return-object v0
.end method
