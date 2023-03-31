.class Lcom/codecanyon/fast/charging/FastCharger$3;
.super Ljava/lang/Object;
.source "FastCharger.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/FastCharger;->ChangeStateFullCharged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codecanyon/fast/charging/FastCharger;

.field final synthetic val$slideinforsharenow:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/FastCharger;Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/FastCharger;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/codecanyon/fast/charging/FastCharger$3;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iput-object p2, p0, Lcom/codecanyon/fast/charging/FastCharger$3;->val$slideinforsharenow:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 353
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger$3;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/FastCharger;->mCardViewShare:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger$3;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/FastCharger;->mCardViewShare:Landroid/support/v7/widget/CardView;

    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger$3;->val$slideinforsharenow:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 356
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 361
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 348
    return-void
.end method
