.class final synthetic Lkot/utils/model/SystemUtils$toKotDetail$attributes$1$2;
.super Lkotlin/jvm/internal/PropertyReference0Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkot/utils/model/SystemUtils;->toKotDetail(Lkot/utils/model/System;)Lkot/KotDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-string v4, "getType()Lkot/KotType;"

    const/4 v5, 0x0

    const-class v2, Lkot/utils/model/System;

    const-string v3, "type"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkot/utils/model/System;

    .line 4
    .line 5
    invoke-virtual {v0}, Lkot/utils/model/System;->getType()Lkot/KotType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
