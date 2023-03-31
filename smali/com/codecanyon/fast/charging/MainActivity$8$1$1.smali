.class Lcom/codecanyon/fast/charging/MainActivity$8$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/MainActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/MainActivity$8$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/codecanyon/fast/charging/MainActivity$8$1;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;->this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;->this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8$1;->this$1:Lcom/codecanyon/fast/charging/MainActivity$8;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/MainActivity;->access$400(Lcom/codecanyon/fast/charging/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;->this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;

    iget v1, v1, Lcom/codecanyon/fast/charging/MainActivity$8$1;->val$finalLevel:I

    if-ne v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;->this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8$1;->this$1:Lcom/codecanyon/fast/charging/MainActivity$8;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/MainActivity;->access$400(Lcom/codecanyon/fast/charging/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v0

    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;->this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;

    iget v1, v1, Lcom/codecanyon/fast/charging/MainActivity$8$1;->val$finalLevel:I

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setProgress(I)V

    .line 388
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;->this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8$1;->this$1:Lcom/codecanyon/fast/charging/MainActivity$8;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/MainActivity;->access$400(Lcom/codecanyon/fast/charging/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setBottomText(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;->this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8$1;->this$1:Lcom/codecanyon/fast/charging/MainActivity$8;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/MainActivity;->access$300(Lcom/codecanyon/fast/charging/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 396
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;->this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8$1;->this$1:Lcom/codecanyon/fast/charging/MainActivity$8;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/MainActivity;->access$400(Lcom/codecanyon/fast/charging/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v0

    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;->this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/MainActivity$8$1;->this$1:Lcom/codecanyon/fast/charging/MainActivity$8;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-static {v1}, Lcom/codecanyon/fast/charging/MainActivity;->access$400(Lcom/codecanyon/fast/charging/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setProgress(I)V

    .line 392
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;->this$2:Lcom/codecanyon/fast/charging/MainActivity$8$1;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8$1;->this$1:Lcom/codecanyon/fast/charging/MainActivity$8;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/MainActivity;->access$400(Lcom/codecanyon/fast/charging/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/github/lzyzsd/circleprogress/ArcProgress;->setBottomText(Ljava/lang/String;)V

    goto :goto_0
.end method
