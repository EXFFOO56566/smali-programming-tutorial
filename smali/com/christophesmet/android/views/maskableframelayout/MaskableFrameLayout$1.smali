.class Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;
.super Ljava/lang/Object;
.source "MaskableFrameLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->registerMeasure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

.field final synthetic val$treeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->this$0:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    iput-object p2, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->val$treeObserver:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->val$treeObserver:Landroid/view/ViewTreeObserver;

    .line 215
    .local v0, "aliveObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->this$0:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    invoke-virtual {v1}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 218
    :cond_0
    if-eqz v0, :cond_2

    .line 219
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 220
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->this$0:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    iget-object v2, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->this$0:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    iget-object v3, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->this$0:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    invoke-static {v3}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->access$100(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->access$200(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->access$300(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Landroid/graphics/Bitmap;)V

    .line 228
    return-void

    .line 222
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout$1;->this$0:Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;

    const-string v2, "GlobalLayoutListener not removed as ViewTreeObserver is not valid"

    invoke-static {v1, v2}, Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;->access$000(Lcom/christophesmet/android/views/maskableframelayout/MaskableFrameLayout;Ljava/lang/String;)V

    goto :goto_0
.end method
