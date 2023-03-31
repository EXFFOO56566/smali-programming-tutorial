.class Lcom/codecanyon/fast/charging/MainActivity$8;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/MainActivity;->getBatteryPercentage()V
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
    .line 366
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 368
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 369
    const-string v0, "level"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 370
    .local v6, "currentLevel":I
    const-string v0, "scale"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 371
    .local v9, "scale":I
    const/4 v8, -0x1

    .line 372
    .local v8, "level":I
    if-ltz v6, :cond_0

    if-lez v9, :cond_0

    .line 373
    mul-int/lit8 v0, v6, 0x64

    div-int v8, v0, v9

    .line 374
    const-string v0, "%"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/codecanyon/fast/charging/MainActivity;->access$302(Lcom/codecanyon/fast/charging/MainActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 378
    move v7, v8

    .line 379
    .local v7, "finalLevel":I
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$8;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/MainActivity;->access$300(Lcom/codecanyon/fast/charging/MainActivity;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/codecanyon/fast/charging/MainActivity$8$1;

    invoke-direct {v1, p0, v7}, Lcom/codecanyon/fast/charging/MainActivity$8$1;-><init>(Lcom/codecanyon/fast/charging/MainActivity$8;I)V

    const-wide/16 v2, 0x3e8

    int-to-long v4, v8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 400
    return-void
.end method
