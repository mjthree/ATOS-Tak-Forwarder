.class public final synthetic Latak/core/Tf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latak/core/Tf;->a:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    iput p2, p0, Latak/core/Tf;->b:I

    iput-object p3, p0, Latak/core/Tf;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Latak/core/Tf;->a:Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;

    iget v1, p0, Latak/core/Tf;->b:I

    iget-object v2, p0, Latak/core/Tf;->c:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroidx/profileinstaller/ProfileInstaller;->b(Landroidx/profileinstaller/ProfileInstaller$DiagnosticsCallback;ILjava/lang/Object;)V

    return-void
.end method
