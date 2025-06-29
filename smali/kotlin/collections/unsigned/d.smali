.class public final synthetic Lkotlin/collections/unsigned/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:[S


# direct methods
.method public synthetic constructor <init>([S)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/unsigned/d;->a:[S

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/unsigned/d;->a:[S

    invoke-static {v0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt;->b([S)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
