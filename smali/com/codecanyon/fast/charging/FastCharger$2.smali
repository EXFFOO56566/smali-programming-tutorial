.class Lcom/codecanyon/fast/charging/FastCharger$2;
.super Landroid/content/BroadcastReceiver;
.source "FastCharger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/FastCharger;->getBatteryPercentage()V
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
    .line 258
    iput-object p1, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x8

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    if-ne v4, v5, :cond_4

    .line 261
    const-string v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 262
    .local v0, "currentLevel":I
    const-string v4, "scale"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 263
    .local v2, "scale":I
    const-string v4, "status"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 264
    .local v3, "status":I
    const/4 v1, -0x1

    .line 265
    .local v1, "level":I
    if-ltz v0, :cond_0

    if-lez v2, :cond_0

    .line 266
    mul-int/lit8 v4, v0, 0x64

    div-int v1, v4, v2

    .line 267
    const-string v4, "%"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->waveProgressView:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Lcn/fanrunqi/waveprogress/WaveProgressView;->setMaxProgress(I)V

    .line 271
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->waveProgressView:Lcn/fanrunqi/waveprogress/WaveProgressView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcn/fanrunqi/waveprogress/WaveProgressView;->setCurrent(ILjava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->waveProgressView:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v6, 0x43020000    # 130.0f

    invoke-virtual {v4, v5, v6}, Lcn/fanrunqi/waveprogress/WaveProgressView;->setWave(FF)V

    .line 273
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->waveProgressView:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const-string v5, "#4D000000"

    const/16 v6, 0x46

    invoke-virtual {v4, v5, v6}, Lcn/fanrunqi/waveprogress/WaveProgressView;->setText(Ljava/lang/String;I)V

    .line 274
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->waveProgressView:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const-string v5, "#4DFF9800"

    invoke-virtual {v4, v5}, Lcn/fanrunqi/waveprogress/WaveProgressView;->setWaveColor(Ljava/lang/String;)V

    .line 275
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->waveProgressView:Lcn/fanrunqi/waveprogress/WaveProgressView;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Lcn/fanrunqi/waveprogress/WaveProgressView;->setmWaveSpeed(I)V

    .line 277
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->FirstTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 278
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->SecondTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->ThirdTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    const/16 v4, 0x5a

    if-gt v1, v4, :cond_1

    .line 282
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->FirstTickleProcess:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v5, v5, Lcom/codecanyon/fast/charging/FastCharger;->Rotate:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->SecondTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 284
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->ThirdTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 285
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->FirstTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->SecondTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->ThirdTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    :cond_1
    const/16 v4, 0x62

    if-gt v1, v4, :cond_2

    const/16 v4, 0x5b

    if-lt v1, v4, :cond_2

    .line 290
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->SecondTickleProcess:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v5, v5, Lcom/codecanyon/fast/charging/FastCharger;->Rotate:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->FirstTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 292
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->ThirdTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 293
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->SecondTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->FirstTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->ThirdTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    :cond_2
    const/16 v4, 0x63

    if-lt v1, v4, :cond_3

    .line 298
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->ThirdTickleProcess:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v5, v5, Lcom/codecanyon/fast/charging/FastCharger;->Rotate:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->FirstTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 300
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->SecondTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 301
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->ThirdTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->FirstTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->SecondTickleProcess:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    :cond_3
    packed-switch v3, :pswitch_data_0

    .line 319
    .end local v0    # "currentLevel":I
    .end local v1    # "level":I
    .end local v2    # "scale":I
    .end local v3    # "status":I
    :cond_4
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    if-ne v4, v5, :cond_5

    .line 320
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 321
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    invoke-virtual {v4}, Lcom/codecanyon/fast/charging/FastCharger;->finish()V

    .line 325
    :cond_5
    return-void

    .line 308
    .restart local v0    # "currentLevel":I
    .restart local v1    # "level":I
    .restart local v2    # "scale":I
    .restart local v3    # "status":I
    :pswitch_1
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->PowerType:Landroid/widget/TextView;

    const-string v5, "AC"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :pswitch_2
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    iget-object v4, v4, Lcom/codecanyon/fast/charging/FastCharger;->PowerType:Landroid/widget/TextView;

    const-string v5, "USB"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 314
    :pswitch_3
    iget-object v4, p0, Lcom/codecanyon/fast/charging/FastCharger$2;->this$0:Lcom/codecanyon/fast/charging/FastCharger;

    invoke-static {v4}, Lcom/codecanyon/fast/charging/FastCharger;->access$000(Lcom/codecanyon/fast/charging/FastCharger;)V

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
