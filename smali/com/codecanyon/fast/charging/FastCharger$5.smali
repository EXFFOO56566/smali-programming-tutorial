.class Lcom/codecanyon/fast/charging/FastCharger$5;
.super Ljava/lang/Object;
.source "FastCharger.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/FastCharger;->StartFastChargerMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codecanyon/fast/charging/FastCharger;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/FastCharger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/FastCharger;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/codecanyon/fast/charging/FastCharger$5;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger$5;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/FastCharger;->StartFastCharger:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 715
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 720
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 710
    return-void
.end method
