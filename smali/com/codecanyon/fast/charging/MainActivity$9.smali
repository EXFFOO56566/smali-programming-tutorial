.class Lcom/codecanyon/fast/charging/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/MainActivity;->StartPowerSavingMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codecanyon/fast/charging/MainActivity;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/MainActivity;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity$9;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$9;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity;->PowerSavingMode:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 811
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 816
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 806
    return-void
.end method
