.class public final synthetic Lkotlin/collections/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/h;->a:[I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/h;->a:[I

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->c([I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
