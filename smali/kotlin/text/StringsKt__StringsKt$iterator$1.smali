.class public final Lkotlin/text/StringsKt__StringsKt$iterator$1;
.super Lkotlin/collections/CharIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/StringsKt__StringsKt;->iterator(Ljava/lang/CharSequence;)Lkotlin/collections/CharIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_iterator:Ljava/lang/CharSequence;

.field private index:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/text/StringsKt__StringsKt$iterator$1;->$this_iterator:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/collections/CharIterator;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/text/StringsKt__StringsKt$iterator$1;->index:I

    .line 2
    .line 3
    iget-object v1, p0, Lkotlin/text/StringsKt__StringsKt$iterator$1;->$this_iterator:Ljava/lang/CharSequence;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public nextChar()C
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlin/text/StringsKt__StringsKt$iterator$1;->$this_iterator:Ljava/lang/CharSequence;

    .line 2
    .line 3
    iget v1, p0, Lkotlin/text/StringsKt__StringsKt$iterator$1;->index:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lkotlin/text/StringsKt__StringsKt$iterator$1;->index:I

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
