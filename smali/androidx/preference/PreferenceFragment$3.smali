.class Landroidx/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/PreferenceFragment;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$3;->this$0:Landroidx/preference/PreferenceFragment;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/preference/PreferenceFragment$3;->val$preference:Landroidx/preference/Preference;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/preference/PreferenceFragment$3;->val$key:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$3;->this$0:Landroidx/preference/PreferenceFragment;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Adapter must implement PreferencePositionCallback"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    iget-object v1, p0, Landroidx/preference/PreferenceFragment$3;->val$preference:Landroidx/preference/Preference;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    move-object v2, v0

    .line 29
    check-cast v2, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 30
    .line 31
    invoke-interface {v2, v1}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    move-object v1, v0

    .line 37
    check-cast v1, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/preference/PreferenceFragment$3;->val$key:Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v1, v2}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    :goto_0
    const/4 v2, -0x1

    .line 46
    if-eq v1, v2, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$3;->this$0:Landroidx/preference/PreferenceFragment;

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    new-instance v1, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/preference/PreferenceFragment$3;->this$0:Landroidx/preference/PreferenceFragment;

    .line 59
    .line 60
    iget-object v2, v2, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 61
    .line 62
    iget-object v3, p0, Landroidx/preference/PreferenceFragment$3;->val$preference:Landroidx/preference/Preference;

    .line 63
    .line 64
    iget-object v4, p0, Landroidx/preference/PreferenceFragment$3;->val$key:Ljava/lang/String;

    .line 65
    .line 66
    invoke-direct {v1, v0, v2, v3, v4}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method
