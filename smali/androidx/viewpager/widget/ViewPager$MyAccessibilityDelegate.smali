.class Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private canScroll()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    return v1
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 v0, 0x1000

    .line 25
    .line 26
    if-ne p1, v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/viewpager/widget/ViewPager;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 42
    .line 43
    iget p1, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 49
    .line 50
    iget p1, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    .line 3
    .line 4
    const-class p1, Landroidx/viewpager/widget/ViewPager;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/16 p1, 0x1000

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const/16 p1, 0x2000

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p3, 0x1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    return p3

    .line 9
    :cond_0
    const/16 p1, 0x1000

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eq p2, p1, :cond_3

    .line 13
    .line 14
    const/16 p1, 0x2000

    .line 15
    .line 16
    if-eq p2, p1, :cond_1

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 20
    .line 21
    const/4 p2, -0x1

    .line 22
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 29
    .line 30
    iget p2, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 31
    .line 32
    sub-int/2addr p2, p3

    .line 33
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 34
    .line 35
    .line 36
    return p3

    .line 37
    :cond_2
    return v0

    .line 38
    :cond_3
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 39
    .line 40
    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager$MyAccessibilityDelegate;->this$0:Landroidx/viewpager/widget/ViewPager;

    .line 47
    .line 48
    iget p2, p1, Landroidx/viewpager/widget/ViewPager;->mCurItem:I

    .line 49
    .line 50
    add-int/2addr p2, p3

    .line 51
    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 52
    .line 53
    .line 54
    return p3

    .line 55
    :cond_4
    return v0
.end method
