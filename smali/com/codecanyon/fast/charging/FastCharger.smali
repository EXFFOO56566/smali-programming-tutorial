.class public Lcom/codecanyon/fast/charging/FastCharger;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FastCharger.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

.field AlertLout:Landroid/widget/RelativeLayout;

.field CardViewBattery:Landroid/support/v7/widget/CardView;

.field CardViewRate:Landroid/support/v7/widget/CardView;

.field CardViewTickleview:Landroid/support/v7/widget/CardView;

.field CardViewTools:Landroid/support/v7/widget/CardView;

.field FirstTickleProcess:Landroid/widget/ImageView;

.field Issue:Ljava/lang/Integer;

.field PowerType:Landroid/widget/TextView;

.field Profile:Ljava/lang/Integer;

.field Rotate:Landroid/view/animation/Animation;

.field SecondTickleProcess:Landroid/widget/ImageView;

.field StartFastCharger:Landroid/widget/Button;

.field ThirdTickleProcess:Landroid/widget/ImageView;

.field Tools_Bluetooth:Landroid/widget/ImageView;

.field Tools_Brightness:Landroid/widget/ImageView;

.field Tools_Mode:Landroid/widget/ImageView;

.field Tools_Rotate:Landroid/widget/ImageView;

.field Tools_Timeout:Landroid/widget/ImageView;

.field Tools_WiFi:Landroid/widget/ImageView;

.field afterFullCharge:Landroid/widget/RelativeLayout;

.field am:Landroid/media/AudioManager;

.field batteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field beforeFullCharge:Landroid/widget/RelativeLayout;

.field private brightness:I

.field btn_feedback:Landroid/widget/Button;

.field btn_ratenow:Landroid/widget/Button;

.field private cResolver:Landroid/content/ContentResolver;

.field i:Landroid/content/Intent;

.field mAlertText:Landroid/widget/TextView;

.field mCardViewShare:Landroid/support/v7/widget/CardView;

.field main_lout_tickleview:Landroid/widget/RelativeLayout;

.field main_lout_toolsview:Landroid/widget/RelativeLayout;

.field ratenow:Landroid/widget/RelativeLayout;

.field private rotate:I

.field sharenow:Landroid/widget/RelativeLayout;

.field private timeout:I

.field toolbar:Landroid/support/v7/widget/Toolbar;

.field waveProgressView:Lcn/fanrunqi/waveprogress/WaveProgressView;

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Issue:Ljava/lang/Integer;

    return-void
.end method

.method private ChangeStateFullCharged()V
    .locals 6

    .prologue
    const v5, 0x7f050014

    const/4 v4, 0x0

    .line 335
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->beforeFullCharge:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 336
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->afterFullCharge:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 339
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 340
    .local v0, "slideinforratenow":Landroid/view/animation/Animation;
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 342
    .local v1, "slideinforsharenow":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewRate:Landroid/support/v7/widget/CardView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 343
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewRate:Landroid/support/v7/widget/CardView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/CardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 344
    new-instance v2, Lcom/codecanyon/fast/charging/FastCharger$3;

    invoke-direct {v2, p0, v1}, Lcom/codecanyon/fast/charging/FastCharger$3;-><init>(Lcom/codecanyon/fast/charging/FastCharger;Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 364
    return-void
.end method

.method private CheckOnAndOff()V
    .locals 6

    .prologue
    const v5, 0x7f020092

    const v4, 0x9c40

    const/4 v3, 0x1

    .line 368
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 369
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_WiFi:Landroid/widget/ImageView;

    const v2, 0x7f020097

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    :goto_0
    iget v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->rotate:I

    if-ne v1, v3, :cond_1

    .line 376
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Rotate:Landroid/widget/ImageView;

    const v2, 0x7f020090

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 382
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2

    .line 391
    :goto_2
    iget v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->brightness:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_4

    .line 392
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Brightness:Landroid/widget/ImageView;

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    :goto_3
    iget v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_5

    .line 399
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Timeout:Landroid/widget/ImageView;

    const v2, 0x7f020093

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    :goto_4
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    .line 414
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 428
    :goto_5
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_WiFi:Landroid/widget/ImageView;

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Rotate:Landroid/widget/ImageView;

    const v2, 0x7f020091

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 385
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Bluetooth:Landroid/widget/ImageView;

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 387
    :cond_3
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Bluetooth:Landroid/widget/ImageView;

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 394
    :cond_4
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Brightness:Landroid/widget/ImageView;

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 400
    :cond_5
    iget v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    const/16 v2, 0x4e20

    if-ne v1, v2, :cond_6

    .line 401
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Timeout:Landroid/widget/ImageView;

    const v2, 0x7f020095

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 402
    :cond_6
    iget v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    const/16 v2, 0x7530

    if-ne v1, v2, :cond_7

    .line 403
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Timeout:Landroid/widget/ImageView;

    const v2, 0x7f020094

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 404
    :cond_7
    iget v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    if-ne v1, v4, :cond_8

    .line 405
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Timeout:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 407
    :cond_8
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Timeout:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 408
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/codecanyon/fast/charging/FastCharger;->setTimeout(I)V

    .line 409
    iput v4, p0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    goto :goto_4

    .line 416
    :pswitch_0
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Mode:Landroid/widget/ImageView;

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 417
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Profile:Ljava/lang/Integer;

    goto :goto_5

    .line 420
    :pswitch_1
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Mode:Landroid/widget/ImageView;

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Profile:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 424
    :pswitch_2
    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Mode:Landroid/widget/ImageView;

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Profile:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private SetClickListner()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_WiFi:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->StartFastCharger:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Mode:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Bluetooth:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Brightness:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Timeout:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Rotate:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->mCardViewShare:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->btn_feedback:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->btn_ratenow:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->AlertLout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/codecanyon/fast/charging/FastCharger;)V
    .locals 0
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/FastCharger;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/FastCharger;->ChangeStateFullCharged()V

    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 757
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 773
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 760
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 761
    .local v0, "arr":[C
    const/4 v2, 0x1

    .line 762
    .local v2, "capitalizeNext":Z
    const-string v3, ""

    .line 763
    .local v3, "phrase":Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-char v1, v0, v4

    .line 764
    .local v1, "c":C
    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 765
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 766
    const/4 v2, 0x0

    .line 763
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 768
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 769
    const/4 v2, 0x1

    .line 771
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .end local v1    # "c":C
    :cond_3
    move-object p0, v3

    .line 773
    goto :goto_0
.end method

.method private getBatteryPercentage()V
    .locals 3

    .prologue
    .line 258
    new-instance v2, Lcom/codecanyon/fast/charging/FastCharger$2;

    invoke-direct {v2, p0}, Lcom/codecanyon/fast/charging/FastCharger$2;-><init>(Lcom/codecanyon/fast/charging/FastCharger;)V

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->batteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 327
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, "batteryLevelFilter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 329
    .local v0, "PowerDisconnectFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->batteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/codecanyon/fast/charging/FastCharger;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->batteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/codecanyon/fast/charging/FastCharger;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    return-void
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 748
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 749
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 750
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    invoke-static {v1}, Lcom/codecanyon/fast/charging/FastCharger;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/codecanyon/fast/charging/FastCharger;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initilizeVariables()V
    .locals 1

    .prologue
    .line 166
    const v0, 0x7f0e00e3

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/fanrunqi/waveprogress/WaveProgressView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->waveProgressView:Lcn/fanrunqi/waveprogress/WaveProgressView;

    .line 167
    const v0, 0x7f0e00eb

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->FirstTickleProcess:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f0e00ed

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->SecondTickleProcess:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f0e00ef

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->ThirdTickleProcess:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f0e00bf

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_WiFi:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f0e00c2

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Rotate:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0e00c1

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Brightness:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Bluetooth:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f0e00c3

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Mode:Landroid/widget/ImageView;

    .line 175
    const v0, 0x7f0e00c4

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Timeout:Landroid/widget/ImageView;

    .line 176
    const v0, 0x7f0e00f1

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->StartFastCharger:Landroid/widget/Button;

    .line 177
    const v0, 0x7f0e00f0

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->main_lout_toolsview:Landroid/widget/RelativeLayout;

    .line 178
    const v0, 0x7f0e00e7

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->main_lout_tickleview:Landroid/widget/RelativeLayout;

    .line 179
    const v0, 0x7f0e00df

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->beforeFullCharge:Landroid/widget/RelativeLayout;

    .line 180
    const v0, 0x7f0e00dc

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->afterFullCharge:Landroid/widget/RelativeLayout;

    .line 181
    const v0, 0x7f0e0094

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewRate:Landroid/support/v7/widget/CardView;

    .line 182
    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewBattery:Landroid/support/v7/widget/CardView;

    .line 183
    const v0, 0x7f0e00e8

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewTickleview:Landroid/support/v7/widget/CardView;

    .line 184
    const v0, 0x7f0e00bc

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewTools:Landroid/support/v7/widget/CardView;

    .line 185
    const v0, 0x7f0e009b

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->mCardViewShare:Landroid/support/v7/widget/CardView;

    .line 186
    const v0, 0x7f0e00ca

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->ratenow:Landroid/widget/RelativeLayout;

    .line 187
    const v0, 0x7f0e00cb

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->sharenow:Landroid/widget/RelativeLayout;

    .line 188
    const v0, 0x7f0e0099

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->btn_feedback:Landroid/widget/Button;

    .line 189
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->btn_ratenow:Landroid/widget/Button;

    .line 190
    const v0, 0x7f0e00b8

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->AlertLout:Landroid/widget/RelativeLayout;

    .line 191
    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->mAlertText:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0e00e5

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->PowerType:Landroid/widget/TextView;

    .line 193
    return-void
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setColorToCardview()V
    .locals 4

    .prologue
    const v3, 0x7f0d005a

    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewRate:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 197
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewBattery:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 198
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewTickleview:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 199
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewTools:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 200
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->mCardViewShare:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 201
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewBattery:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 202
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewTools:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 203
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewTickleview:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 204
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewRate:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 205
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->mCardViewShare:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 206
    return-void
.end method

.method private setTimeout(I)V
    .locals 3
    .param p1, "screenOffTimeout"    # I

    .prologue
    .line 728
    packed-switch p1, :pswitch_data_0

    .line 742
    const/4 v0, -0x1

    .line 744
    .local v0, "time":I
    :goto_0
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 745
    return-void

    .line 730
    .end local v0    # "time":I
    :pswitch_0
    const/16 v0, 0x2710

    .line 731
    .restart local v0    # "time":I
    goto :goto_0

    .line 733
    .end local v0    # "time":I
    :pswitch_1
    const/16 v0, 0x4e20

    .line 734
    .restart local v0    # "time":I
    goto :goto_0

    .line 736
    .end local v0    # "time":I
    :pswitch_2
    const/16 v0, 0x7530

    .line 737
    .restart local v0    # "time":I
    goto :goto_0

    .line 739
    .end local v0    # "time":I
    :pswitch_3
    const v0, 0x9c40

    .line 740
    .restart local v0    # "time":I
    goto :goto_0

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public CheckIntentToolsOnOrOff()V
    .locals 4

    .prologue
    .line 210
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->Issue:Ljava/lang/Integer;

    .line 212
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->isMobileDataEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->Issue:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->Issue:Ljava/lang/Integer;

    .line 216
    :cond_0
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/codecanyon/fast/charging/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 217
    .local v0, "ManagerForLocation":Landroid/location/LocationManager;
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 219
    .local v1, "statusOfLocation":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->Issue:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->Issue:Ljava/lang/Integer;

    .line 223
    :cond_1
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/codecanyon/fast/charging/FastCharger;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->Issue:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->Issue:Ljava/lang/Integer;

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->mAlertText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codecanyon/fast/charging/FastCharger;->Issue:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->Issue:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    .line 230
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->AlertLout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 232
    :cond_3
    return-void
.end method

.method public StartFastChargerMethod()V
    .locals 13

    .prologue
    const/16 v12, 0x14

    const/4 v11, 0x0

    .line 657
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 659
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 661
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 663
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 664
    .local v3, "packageInfo":Landroid/content/pm/ApplicationInfo;
    const-string v8, "pakages"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget v8, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 667
    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0

    .line 670
    .end local v3    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    iget v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->brightness:I

    if-le v7, v12, :cond_2

    .line 671
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->cResolver:Landroid/content/ContentResolver;

    const-string v8, "screen_brightness"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 673
    .local v1, "layoutpars":Landroid/view/WindowManager$LayoutParams;
    const/high16 v7, 0x41a00000    # 20.0f

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 674
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->window:Landroid/view/Window;

    invoke-virtual {v7, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 675
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Brightness:Landroid/widget/ImageView;

    const v8, 0x7f02008b

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 676
    iput v12, p0, Lcom/codecanyon/fast/charging/FastCharger;->brightness:I

    .line 679
    .end local v1    # "layoutpars":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 680
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 681
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_WiFi:Landroid/widget/ImageView;

    const v8, 0x7f020096

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 684
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-nez v7, :cond_4

    .line 691
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accelerometer_rotation"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 692
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Rotate:Landroid/widget/ImageView;

    const v8, 0x7f020091

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 694
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/codecanyon/fast/charging/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    .line 695
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    invoke-virtual {v7, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 696
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Mode:Landroid/widget/ImageView;

    const v8, 0x7f02008e

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 698
    invoke-direct {p0, v11}, Lcom/codecanyon/fast/charging/FastCharger;->setTimeout(I)V

    .line 699
    const/16 v7, 0x2710

    iput v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    .line 700
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Timeout:Landroid/widget/ImageView;

    const v8, 0x7f020093

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 702
    const v7, 0x7f050010

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 705
    .local v0, "fadeInAnimation":Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->StartFastCharger:Landroid/widget/Button;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 706
    new-instance v7, Lcom/codecanyon/fast/charging/FastCharger$5;

    invoke-direct {v7, p0}, Lcom/codecanyon/fast/charging/FastCharger$5;-><init>(Lcom/codecanyon/fast/charging/FastCharger;)V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 723
    return-void

    .line 686
    .end local v0    # "fadeInAnimation":Landroid/view/animation/Animation;
    :cond_4
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 688
    iget-object v7, p0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1
.end method

.method public isMobileDataEnabled()Ljava/lang/Boolean;
    .locals 7

    .prologue
    .line 235
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/codecanyon/fast/charging/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "connectivityService":Ljava/lang/Object;
    move-object v1, v2

    .line 236
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 239
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 240
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getMobileDataEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 241
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 242
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v5

    .line 243
    :catch_0
    move-exception v3

    .line 244
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 459
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    .line 652
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 466
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f050010

    invoke-static/range {v15 .. v16}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 468
    .local v9, "slide_down":Landroid/view/animation/Animation;
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f050011

    invoke-static/range {v15 .. v16}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    .line 471
    .local v10, "slide_up":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->CardViewTools:Landroid/support/v7/widget/CardView;

    invoke-virtual {v15, v9}, Landroid/support/v7/widget/CardView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 472
    new-instance v15, Lcom/codecanyon/fast/charging/FastCharger$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v10}, Lcom/codecanyon/fast/charging/FastCharger$4;-><init>(Lcom/codecanyon/fast/charging/FastCharger;Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v15}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 499
    .end local v9    # "slide_down":Landroid/view/animation/Animation;
    .end local v10    # "slide_up":Landroid/view/animation/Animation;
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 500
    .local v14, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 501
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_WiFi:Landroid/widget/ImageView;

    const v16, 0x7f020096

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 506
    .end local v14    # "wifiManager":Landroid/net/wifi/WifiManager;
    :sswitch_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->rotate:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "accelerometer_rotation"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Rotate:Landroid/widget/ImageView;

    const v16, 0x7f020091

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->rotate:I

    goto :goto_0

    .line 518
    :sswitch_3
    const-string v15, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/codecanyon/fast/charging/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    .line 520
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    invoke-virtual {v15}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 533
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Mode:Landroid/widget/ImageView;

    const v16, 0x7f02008e

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 524
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Mode:Landroid/widget/ImageView;

    const v16, 0x7f02008e

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 525
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 528
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Mode:Landroid/widget/ImageView;

    const v16, 0x7f02008e

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 542
    :sswitch_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 543
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v15, :cond_0

    .line 545
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 546
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Bluetooth:Landroid/widget/ImageView;

    const v16, 0x7f020089

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_0

    .line 554
    :sswitch_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->brightness:I

    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->cResolver:Landroid/content/ContentResolver;

    const-string v16, "screen_brightness"

    const/16 v17, 0x14

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->window:Landroid/view/Window;

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 557
    .local v6, "layoutpars":Landroid/view/WindowManager$LayoutParams;
    const/high16 v15, 0x41a00000    # 20.0f

    iput v15, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 558
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->window:Landroid/view/Window;

    invoke-virtual {v15, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Brightness:Landroid/widget/ImageView;

    const v16, 0x7f02008b

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 560
    const/16 v15, 0x14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->brightness:I

    goto/16 :goto_0

    .line 567
    .end local v6    # "layoutpars":Landroid/view/WindowManager$LayoutParams;
    :sswitch_6
    move-object/from16 v0, p0

    iget v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    const/16 v16, 0x2710

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 568
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Timeout:Landroid/widget/ImageView;

    const v16, 0x7f020093

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 569
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/codecanyon/fast/charging/FastCharger;->setTimeout(I)V

    .line 570
    const/16 v15, 0x2710

    move-object/from16 v0, p0

    iput v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    goto/16 :goto_0

    .line 572
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->Tools_Timeout:Landroid/widget/ImageView;

    const v16, 0x7f020093

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 573
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/codecanyon/fast/charging/FastCharger;->setTimeout(I)V

    .line 574
    const/16 v15, 0x2710

    move-object/from16 v0, p0

    iput v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    goto/16 :goto_0

    .line 581
    :sswitch_7
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    .line 582
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    const-string v16, "android.intent.action.SEND"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    const-string v16, "text/plain"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Check out "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08003d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", the free app for save your battery with Battery saver. https://play.google.com/store/apps/details?id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 588
    .local v11, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    const-string v16, "android.intent.extra.TEXT"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Share "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08003d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    .line 590
    .local v8, "sender":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/codecanyon/fast/charging/FastCharger;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 596
    .end local v8    # "sender":Landroid/content/Intent;
    .end local v11    # "text":Ljava/lang/String;
    :sswitch_8
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 597
    .local v2, "displaymetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 598
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 599
    .local v4, "height":I
    iget v13, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 601
    .local v13, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    .line 602
    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 603
    .local v7, "manager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 605
    .local v5, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 610
    :goto_1
    iget-object v12, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 612
    .local v12, "version":Ljava/lang/String;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.SEND"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    .line 613
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    const-string v16, "message/rfc822"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    const-string v16, "android.intent.extra.EMAIL"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "EMAIL"

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    const-string v16, "android.intent.extra.SUBJECT"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f08003d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    const-string v16, "android.intent.extra.TEXT"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\n Device :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 617
    invoke-static {}, Lcom/codecanyon/fast/charging/FastCharger;->getDeviceName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n SystemVersion:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n Display Height  :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "px\n Display Width  :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "px\n\n Please write your problem to us we will try our best to solve it ..\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 616
    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    const-string v16, "Send Email"

    invoke-static/range {v15 .. v16}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/codecanyon/fast/charging/FastCharger;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 606
    .end local v12    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 608
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 631
    .end local v2    # "displaymetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "height":I
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v7    # "manager":Landroid/content/pm/PackageManager;
    .end local v13    # "width":I
    :sswitch_9
    :try_start_1
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "market://details?id="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 631
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/codecanyon/fast/charging/FastCharger;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 633
    :catch_1
    move-exception v1

    .line 634
    .local v1, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.VIEW"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "http://play.google.com/store/apps/details?id="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 634
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/codecanyon/fast/charging/FastCharger;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 643
    .end local v1    # "anfe":Landroid/content/ActivityNotFoundException;
    :sswitch_a
    new-instance v15, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/FastCharger;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const-class v17, Lcom/codecanyon/fast/charging/CloseAllTools;

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    .line 644
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    const-string v16, "SetValue"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/codecanyon/fast/charging/FastCharger;->i:Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/codecanyon/fast/charging/FastCharger;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 459
    :sswitch_data_0
    .sparse-switch
        0x7f0e0099 -> :sswitch_8
        0x7f0e009a -> :sswitch_9
        0x7f0e009b -> :sswitch_7
        0x7f0e00b8 -> :sswitch_a
        0x7f0e00bf -> :sswitch_1
        0x7f0e00c0 -> :sswitch_4
        0x7f0e00c1 -> :sswitch_5
        0x7f0e00c2 -> :sswitch_2
        0x7f0e00c3 -> :sswitch_3
        0x7f0e00c4 -> :sswitch_6
        0x7f0e00f1 -> :sswitch_0
    .end sparse-switch

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x9c40

    const/4 v5, 0x0

    .line 87
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v2, 0x7f040030

    invoke-virtual {p0, v2}, Lcom/codecanyon/fast/charging/FastCharger;->setContentView(I)V

    .line 92
    const v2, 0x7f0e008d

    invoke-virtual {p0, v2}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 93
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 94
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v2}, Lcom/codecanyon/fast/charging/FastCharger;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 95
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->cResolver:Landroid/content/ContentResolver;

    .line 100
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->window:Landroid/view/Window;

    .line 103
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/FastCharger;->initilizeVariables()V

    .line 104
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getBatteryPercentage()V

    .line 105
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/FastCharger;->CheckOnAndOff()V

    .line 106
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/FastCharger;->SetClickListner()V

    .line 107
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->CheckIntentToolsOnOrOff()V

    .line 108
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/FastCharger;->setColorToCardview()V

    .line 110
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->StartFastCharger:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    const v2, 0x7f0e00c5

    invoke-virtual {p0, v2}, Lcom/codecanyon/fast/charging/FastCharger;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 113
    .local v0, "adView":Lcom/google/android/gms/ads/NativeExpressAdView;
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 114
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 115
    new-instance v2, Lcom/codecanyon/fast/charging/FastCharger$1;

    invoke-direct {v2, p0, v0}, Lcom/codecanyon/fast/charging/FastCharger$1;-><init>(Lcom/codecanyon/fast/charging/FastCharger;Lcom/google/android/gms/ads/NativeExpressAdView;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 124
    const v2, 0x7f050012

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->Rotate:Landroid/view/animation/Animation;

    .line 126
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->cResolver:Landroid/content/ContentResolver;

    .line 127
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/FastCharger;->getWindow()Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->window:Landroid/view/Window;

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->brightness:I

    .line 132
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->rotate:I

    .line 133
    iget-object v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    .line 135
    iget v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I

    if-le v2, v6, :cond_1

    .line 136
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/codecanyon/fast/charging/FastCharger;->setTimeout(I)V

    .line 137
    const v2, 0x9c40

    iput v2, p0, Lcom/codecanyon/fast/charging/FastCharger;->timeout:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Error"

    const-string v3, "Cannot access system brightness"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 450
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    .line 451
    iget-object v0, p0, Lcom/codecanyon/fast/charging/FastCharger;->am:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/codecanyon/fast/charging/FastCharger;->Profile:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 452
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/codecanyon/fast/charging/FastCharger;->setTimeout(I)V

    .line 453
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 454
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 438
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 439
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/FastCharger;->CheckOnAndOff()V

    .line 440
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 444
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    .line 445
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/FastCharger;->CheckOnAndOff()V

    .line 446
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 432
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 433
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/FastCharger;->CheckOnAndOff()V

    .line 434
    return-void
.end method
