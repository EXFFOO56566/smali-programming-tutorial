.class Lcom/codecanyon/fast/charging/MainActivity$8$1;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/MainActivity$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codecanyon/fast/charging/MainActivity$8;

.field final synthetic val$finalLevel:I


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/MainActivity$8;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/codecanyon/fast/charging/MainActivity$8;

    .prologue
    .line 379
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1;->this$1:Lcom/codecanyon/fast/charging/MainActivity$8;

    iput p2, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1;->val$finalLevel:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$8$1;->this$1:Lcom/codecanyon/fast/charging/MainActivity$8;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    new-instance v1, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;

    invoke-direct {v1, p0}, Lcom/codecanyon/fast/charging/MainActivity$8$1$1;-><init>(Lcom/codecanyon/fast/charging/MainActivity$8$1;)V

    invoke-virtual {v0, v1}, Lcom/codecanyon/fast/charging/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method
