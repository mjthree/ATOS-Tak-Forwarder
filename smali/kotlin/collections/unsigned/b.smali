.class public final synthetic Lkotlin/collections/unsigned/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/unsigned/b;->a:[J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/collections/unsigned/b;->a:[J

    invoke-static {v0}, Lkotlin/collections/unsigned/UArraysKt___UArraysKt;->d([J)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
