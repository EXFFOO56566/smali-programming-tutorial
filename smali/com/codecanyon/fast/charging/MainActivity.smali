.class public Lcom/codecanyon/fast/charging/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

.field AlertLout:Landroid/widget/RelativeLayout;

.field CardViewBatteryArc:Landroid/support/v7/widget/CardView;

.field CardViewRate:Landroid/support/v7/widget/CardView;

.field CardViewTools:Landroid/support/v7/widget/CardView;

.field Issue:Ljava/lang/Integer;

.field PowerSavingMode:Landroid/widget/Button;

.field Profile:Ljava/lang/Integer;

.field Tools_Bluetooth:Landroid/widget/ImageView;

.field Tools_Brightness:Landroid/widget/ImageView;

.field Tools_Mode:Landroid/widget/ImageView;

.field Tools_Rotate:Landroid/widget/ImageView;

.field Tools_Timeout:Landroid/widget/ImageView;

.field Tools_WiFi:Landroid/widget/ImageView;

.field TxtLevel:Landroid/widget/TextView;

.field TxtTemperature:Landroid/widget/TextView;

.field TxtVoltage:Landroid/widget/TextView;

.field adRequest:Lcom/google/android/gms/ads/AdRequest;

.field am:Landroid/media/AudioManager;

.field private arcProgress:Lcom/github/lzyzsd/circleprogress/ArcProgress;

.field batteryDetail:Landroid/support/v7/widget/CardView;

.field public batteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field batteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private brightness:I

.field btn_feedback:Landroid/widget/Button;

.field btn_ratenow:Landroid/widget/Button;

.field private cResolver:Landroid/content/ContentResolver;

.field donotdisterb_dialog:Landroid/support/v7/app/AlertDialog$Builder;

.field exit_dialog:Landroid/support/v7/app/AlertDialog$Builder;

.field i:Landroid/content/Intent;

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field mAlertText:Landroid/widget/TextView;

.field mCardViewShare:Landroid/support/v7/widget/CardView;

.field private mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private rotate:I

.field private timeout:I

.field private timer:Ljava/util/Timer;

.field toolbar:Landroid/support/v7/widget/Toolbar;

.field private window:Landroid/view/Window;

.field writesetting_dialog:Landroid/support/v7/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/codecanyon/fast/charging/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/codecanyon/fast/charging/MainActivity$1;-><init>(Lcom/codecanyon/fast/charging/MainActivity;)V

    iput-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->Issue:Ljava/lang/Integer;

    return-void
.end method

.method private CheckOnAndOff()V
    .locals 6

    .prologue
    const v5, 0x7f020092

    const v4, 0x9c40

    const/4 v3, 0x1

    .line 414
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 415
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_WiFi:Landroid/widget/ImageView;

    const v2, 0x7f020097

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    :goto_0
    iget v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->rotate:I

    if-ne v1, v3, :cond_1

    .line 422
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Rotate:Landroid/widget/ImageView;

    const v2, 0x7f020090

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 427
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 428
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_2

    .line 438
    :goto_2
    iget v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->brightness:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_4

    .line 439
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Brightness:Landroid/widget/ImageView;

    const v2, 0x7f02008c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 445
    :goto_3
    iget v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_5

    .line 446
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    const v2, 0x7f020093

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    :goto_4
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    .line 461
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 476
    :goto_5
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_WiFi:Landroid/widget/ImageView;

    const v2, 0x7f020096

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 424
    :cond_1
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Rotate:Landroid/widget/ImageView;

    const v2, 0x7f020091

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 430
    :cond_2
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Bluetooth:Landroid/widget/ImageView;

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 433
    :cond_3
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Bluetooth:Landroid/widget/ImageView;

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 441
    :cond_4
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Brightness:Landroid/widget/ImageView;

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 447
    :cond_5
    iget v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    const/16 v2, 0x4e20

    if-ne v1, v2, :cond_6

    .line 448
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    const v2, 0x7f020095

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 449
    :cond_6
    iget v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    const/16 v2, 0x7530

    if-ne v1, v2, :cond_7

    .line 450
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    const v2, 0x7f020094

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 451
    :cond_7
    iget v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    if-ne v1, v4, :cond_8

    .line 452
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 454
    :cond_8
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 455
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    .line 456
    iput v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    goto :goto_4

    .line 463
    :pswitch_0
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Mode:Landroid/widget/ImageView;

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Profile:Ljava/lang/Integer;

    goto :goto_5

    .line 467
    :pswitch_1
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Mode:Landroid/widget/ImageView;

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 468
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Profile:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 471
    :pswitch_2
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Mode:Landroid/widget/ImageView;

    const v2, 0x7f02008d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->Profile:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 461
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
    .line 350
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_WiFi:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Rotate:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Bluetooth:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Brightness:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Mode:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->batteryDetail:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->PowerSavingMode:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->mCardViewShare:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->btn_feedback:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->btn_ratenow:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->AlertLout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    return-void
.end method

.method static synthetic access$000(Lcom/codecanyon/fast/charging/MainActivity;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/MainActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/codecanyon/fast/charging/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/MainActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/MainActivity;->showInterstitial()V

    return-void
.end method

.method static synthetic access$200(Lcom/codecanyon/fast/charging/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/codecanyon/fast/charging/MainActivity;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/MainActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/codecanyon/fast/charging/MainActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/MainActivity;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/codecanyon/fast/charging/MainActivity;)Lcom/github/lzyzsd/circleprogress/ArcProgress;
    .locals 1
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/MainActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->arcProgress:Lcom/github/lzyzsd/circleprogress/ArcProgress;

    return-object v0
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    .end local p0    # "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 119
    .restart local p0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 120
    .local v0, "arr":[C
    const/4 v2, 0x1

    .line 121
    .local v2, "capitalizeNext":Z
    const-string v3, ""

    .line 122
    .local v3, "phrase":Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_3

    aget-char v1, v0, v4

    .line 123
    .local v1, "c":C
    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
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

    .line 125
    const/4 v2, 0x0

    .line 122
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 127
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    const/4 v2, 0x1

    .line 130
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

    .line 132
    goto :goto_0
.end method

.method private getBatteryPercentage()V
    .locals 2

    .prologue
    .line 366
    new-instance v1, Lcom/codecanyon/fast/charging/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/codecanyon/fast/charging/MainActivity$8;-><init>(Lcom/codecanyon/fast/charging/MainActivity;)V

    iput-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->batteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 403
    .local v0, "batteryLevelFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->batteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/codecanyon/fast/charging/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 404
    return-void
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 108
    .local v0, "manufacturer":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 109
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {v1}, Lcom/codecanyon/fast/charging/MainActivity;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/codecanyon/fast/charging/MainActivity;->capitalize(Ljava/lang/String;)Ljava/lang/String;

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

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 101
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

    .line 289
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->CardViewBatteryArc:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 290
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->CardViewTools:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 291
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->batteryDetail:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 292
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->CardViewRate:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 293
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->mCardViewShare:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 294
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->CardViewBatteryArc:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 295
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->CardViewTools:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 296
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->batteryDetail:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 297
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->CardViewRate:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 298
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->mCardViewShare:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 299
    return-void
.end method

.method private setTimeout(I)V
    .locals 3
    .param p1, "screenOffTimeout"    # I

    .prologue
    .line 850
    packed-switch p1, :pswitch_data_0

    .line 864
    const/4 v0, -0x1

    .line 866
    .local v0, "time":I
    :goto_0
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 867
    return-void

    .line 852
    .end local v0    # "time":I
    :pswitch_0
    const/16 v0, 0x2710

    .line 853
    .restart local v0    # "time":I
    goto :goto_0

    .line 855
    .end local v0    # "time":I
    :pswitch_1
    const/16 v0, 0x4e20

    .line 856
    .restart local v0    # "time":I
    goto :goto_0

    .line 858
    .end local v0    # "time":I
    :pswitch_2
    const/16 v0, 0x7530

    .line 859
    .restart local v0    # "time":I
    goto :goto_0

    .line 861
    .end local v0    # "time":I
    :pswitch_3
    const v0, 0x9c40

    .line 862
    .restart local v0    # "time":I
    goto :goto_0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setupdialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 303
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->exit_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    .line 304
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->exit_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "Are you sure?"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 305
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->exit_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "Do you want to exit from this application?"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 306
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->exit_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "Yes"

    new-instance v2, Lcom/codecanyon/fast/charging/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/codecanyon/fast/charging/MainActivity$5;-><init>(Lcom/codecanyon/fast/charging/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 317
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->writesetting_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    .line 318
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->writesetting_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "Important!"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 319
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->writesetting_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 320
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->writesetting_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "Need write setting permission to set screen brightness, screen timeout, screen rotation, sound profile."

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 321
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->writesetting_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lcom/codecanyon/fast/charging/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/codecanyon/fast/charging/MainActivity$6;-><init>(Lcom/codecanyon/fast/charging/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 330
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->donotdisterb_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    .line 331
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->donotdisterb_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "Important!"

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 332
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->donotdisterb_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 333
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->donotdisterb_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "Need do not disturb permisson for fast charging."

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 334
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->donotdisterb_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    const-string v1, "OK"

    new-instance v2, Lcom/codecanyon/fast/charging/MainActivity$7;

    invoke-direct {v2, p0}, Lcom/codecanyon/fast/charging/MainActivity$7;-><init>(Lcom/codecanyon/fast/charging/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 347
    return-void
.end method

.method private showInterstitial()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 284
    :cond_0
    return-void
.end method


# virtual methods
.method public CheckIntentToolsOnOrOff()V
    .locals 4

    .prologue
    .line 710
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity;->Issue:Ljava/lang/Integer;

    .line 712
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->isMobileDataEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 713
    iget-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity;->Issue:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity;->Issue:Ljava/lang/Integer;

    .line 716
    :cond_0
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/codecanyon/fast/charging/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 717
    .local v0, "ManagerForLocation":Landroid/location/LocationManager;
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 719
    .local v1, "statusOfLocation":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 720
    iget-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity;->Issue:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity;->Issue:Ljava/lang/Integer;

    .line 723
    :cond_1
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/codecanyon/fast/charging/MainActivity;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 724
    iget-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity;->Issue:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity;->Issue:Ljava/lang/Integer;

    .line 727
    :cond_2
    iget-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity;->mAlertText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codecanyon/fast/charging/MainActivity;->Issue:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity;->Issue:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    .line 730
    iget-object v2, p0, Lcom/codecanyon/fast/charging/MainActivity;->AlertLout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 732
    :cond_3
    return-void
.end method

.method public StartPowerSavingMode()V
    .locals 13

    .prologue
    const/16 v12, 0x14

    const/4 v11, 0x0

    .line 752
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 753
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 755
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 757
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

    .line 758
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

    .line 759
    iget v8, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-eq v8, v9, :cond_0

    .line 761
    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_0

    .line 764
    .end local v3    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 765
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 766
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_WiFi:Landroid/widget/ImageView;

    const v8, 0x7f020096

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 768
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 769
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-nez v7, :cond_4

    .line 778
    :cond_2
    :goto_1
    iget v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->brightness:I

    if-le v7, v12, :cond_3

    .line 779
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v8, "screen_brightness"

    invoke-static {v7, v8, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 780
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->window:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 781
    .local v1, "layoutpars":Landroid/view/WindowManager$LayoutParams;
    const/high16 v7, 0x41a00000    # 20.0f

    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 782
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->window:Landroid/view/Window;

    invoke-virtual {v7, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 783
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Brightness:Landroid/widget/ImageView;

    const v8, 0x7f02008b

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 784
    iput v12, p0, Lcom/codecanyon/fast/charging/MainActivity;->brightness:I

    .line 787
    .end local v1    # "layoutpars":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accelerometer_rotation"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 788
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Rotate:Landroid/widget/ImageView;

    const v8, 0x7f020091

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 790
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/codecanyon/fast/charging/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    .line 791
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    invoke-virtual {v7, v11}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 792
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Mode:Landroid/widget/ImageView;

    const v8, 0x7f02008e

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 794
    invoke-direct {p0, v11}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    .line 795
    const/16 v7, 0x2710

    iput v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    .line 796
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    const v8, 0x7f020093

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 798
    const v7, 0x7f050010

    invoke-static {p0, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 801
    .local v0, "fadeInAnimation":Landroid/view/animation/Animation;
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->PowerSavingMode:Landroid/widget/Button;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    .line 802
    new-instance v7, Lcom/codecanyon/fast/charging/MainActivity$9;

    invoke-direct {v7, p0}, Lcom/codecanyon/fast/charging/MainActivity$9;-><init>(Lcom/codecanyon/fast/charging/MainActivity;)V

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 819
    return-void

    .line 771
    .end local v0    # "fadeInAnimation":Landroid/view/animation/Animation;
    :cond_4
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 772
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 773
    iget-object v7, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Bluetooth:Landroid/widget/ImageView;

    const v8, 0x7f020089

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public isMobileDataEnabled()Ljava/lang/Boolean;
    .locals 7

    .prologue
    .line 735
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/codecanyon/fast/charging/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "connectivityService":Ljava/lang/Object;
    move-object v1, v2

    .line 736
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 739
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 740
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getMobileDataEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 741
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 742
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v5

    .line 743
    :catch_0
    move-exception v3

    .line 744
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 745
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->exit_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 873
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 508
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 512
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "wifi"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 513
    .local v13, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 514
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_WiFi:Landroid/widget/ImageView;

    const v15, 0x7f020096

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 517
    :cond_1
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_WiFi:Landroid/widget/ImageView;

    const v15, 0x7f020097

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 524
    .end local v13    # "wifiManager":Landroid/net/wifi/WifiManager;
    :sswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->rotate:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "accelerometer_rotation"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 526
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Rotate:Landroid/widget/ImageView;

    const v15, 0x7f020090

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 527
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->rotate:I

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "accelerometer_rotation"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 530
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Rotate:Landroid/widget/ImageView;

    const v15, 0x7f020091

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 531
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->rotate:I

    goto :goto_0

    .line 540
    :sswitch_2
    const-string v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    .line 542
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    invoke-virtual {v14}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto/16 :goto_0

    .line 544
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Mode:Landroid/widget/ImageView;

    const v15, 0x7f02008f

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 548
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Mode:Landroid/widget/ImageView;

    const v15, 0x7f02008d

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 552
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Mode:Landroid/widget/ImageView;

    const v15, 0x7f02008e

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto/16 :goto_0

    .line 562
    :sswitch_3
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    .line 563
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v14, :cond_0

    .line 565
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Bluetooth:Landroid/widget/ImageView;

    const v15, 0x7f020089

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto/16 :goto_0

    .line 569
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Bluetooth:Landroid/widget/ImageView;

    const v15, 0x7f02008a

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->AdapterForBluetooth:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v14}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_0

    .line 577
    :sswitch_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->brightness:I

    const/16 v15, 0x14

    if-le v14, v15, :cond_4

    .line 578
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v15, "screen_brightness"

    const/16 v16, 0x14

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 579
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->window:Landroid/view/Window;

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 580
    .local v7, "layoutpars":Landroid/view/WindowManager$LayoutParams;
    const/high16 v14, 0x41a00000    # 20.0f

    iput v14, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->window:Landroid/view/Window;

    invoke-virtual {v14, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Brightness:Landroid/widget/ImageView;

    const v15, 0x7f02008b

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->brightness:I

    goto/16 :goto_0

    .line 585
    .end local v7    # "layoutpars":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v15, "screen_brightness"

    const/16 v16, 0xfe

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->window:Landroid/view/Window;

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    .line 587
    .restart local v7    # "layoutpars":Landroid/view/WindowManager$LayoutParams;
    const/high16 v14, 0x437e0000    # 254.0f

    iput v14, v7, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 588
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->window:Landroid/view/Window;

    invoke-virtual {v14, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 589
    const/16 v14, 0xfe

    move-object/from16 v0, p0

    iput v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->brightness:I

    .line 590
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Brightness:Landroid/widget/ImageView;

    const v15, 0x7f02008c

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 598
    .end local v7    # "layoutpars":Landroid/view/WindowManager$LayoutParams;
    :sswitch_5
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-class v16, Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    .line 599
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 605
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->StartPowerSavingMode()V

    goto/16 :goto_0

    .line 611
    :sswitch_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    const/16 v15, 0x2710

    if-ne v14, v15, :cond_5

    .line 612
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    const v15, 0x7f020095

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 613
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    .line 614
    const/16 v14, 0x4e20

    move-object/from16 v0, p0

    iput v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    goto/16 :goto_0

    .line 615
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    const/16 v15, 0x4e20

    if-ne v14, v15, :cond_6

    .line 616
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    const v15, 0x7f020094

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 617
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    .line 618
    const/16 v14, 0x7530

    move-object/from16 v0, p0

    iput v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    goto/16 :goto_0

    .line 619
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    const/16 v15, 0x7530

    if-ne v14, v15, :cond_7

    .line 620
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    const v15, 0x7f020092

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 621
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    .line 622
    const v14, 0x9c40

    move-object/from16 v0, p0

    iput v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    goto/16 :goto_0

    .line 623
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    const v15, 0x9c40

    if-ne v14, v15, :cond_8

    .line 624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    const v15, 0x7f020093

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 625
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    .line 626
    const/16 v14, 0x2710

    move-object/from16 v0, p0

    iput v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    goto/16 :goto_0

    .line 628
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    const v15, 0x7f020092

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 629
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    .line 630
    const v14, 0x9c40

    move-object/from16 v0, p0

    iput v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    goto/16 :goto_0

    .line 637
    :sswitch_8
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    .line 638
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    const-string v15, "android.intent.action.SEND"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    const-string v15, "text/plain"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Check out "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08003d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", the free app for save your battery with "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f08003d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ". https://play.google.com/store/apps/details?id="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 644
    .local v10, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    const-string v15, "android.intent.extra.TEXT"

    invoke-virtual {v14, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Share "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08003d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    .line 646
    .local v9, "sender":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/codecanyon/fast/charging/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 652
    .end local v9    # "sender":Landroid/content/Intent;
    .end local v10    # "text":Ljava/lang/String;
    :sswitch_9
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 653
    .local v3, "displaymetrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 654
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 655
    .local v5, "height":I
    iget v12, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 657
    .local v12, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    .line 658
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 659
    .local v8, "manager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 661
    .local v6, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 666
    :goto_1
    iget-object v11, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 668
    .local v11, "version":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.SEND"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    .line 669
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    const-string v15, "message/rfc822"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    const-string v15, "android.intent.extra.EMAIL"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f080043

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/codecanyon/fast/charging/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    const-string v15, "android.intent.extra.SUBJECT"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08003d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Version ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 672
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    const-string v15, "android.intent.extra.TEXT"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "\n Device :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 673
    invoke-static {}, Lcom/codecanyon/fast/charging/MainActivity;->getDeviceName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n SystemVersion:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n Display Height  :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "px\n Display Width  :"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "px\n\n Please write your problem to us we will try our best to solve it ..\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 672
    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    const-string v15, "Send Email"

    invoke-static {v14, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 662
    .end local v11    # "version":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 664
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 687
    .end local v3    # "displaymetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "height":I
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v8    # "manager":Landroid/content/pm/PackageManager;
    .end local v12    # "width":I
    :sswitch_a
    :try_start_1
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "market://details?id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 687
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 689
    :catch_1
    move-exception v2

    .line 690
    .local v2, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://play.google.com/store/apps/details?id="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 690
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 698
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    :sswitch_b
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-class v16, Lcom/codecanyon/fast/charging/CloseAllTools;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    .line 699
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    const-string v15, "SetValue"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 700
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/codecanyon/fast/charging/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 508
    :sswitch_data_0
    .sparse-switch
        0x7f0e0099 -> :sswitch_9
        0x7f0e009a -> :sswitch_a
        0x7f0e009b -> :sswitch_8
        0x7f0e00b8 -> :sswitch_b
        0x7f0e00bb -> :sswitch_6
        0x7f0e00bf -> :sswitch_0
        0x7f0e00c0 -> :sswitch_3
        0x7f0e00c1 -> :sswitch_4
        0x7f0e00c2 -> :sswitch_1
        0x7f0e00c3 -> :sswitch_2
        0x7f0e00c4 -> :sswitch_7
        0x7f0e00c6 -> :sswitch_5
    .end sparse-switch

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x9c40

    .line 141
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 145
    :cond_0
    const v4, 0x7f04001f

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->setContentView(I)V

    .line 146
    const v4, 0x7f0e008d

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 147
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 148
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 149
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08003d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/MainActivity;->setupdialog()V

    .line 153
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "BatteryReciver"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    const v4, 0x7f0e00b7

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/github/lzyzsd/circleprogress/ArcProgress;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->arcProgress:Lcom/github/lzyzsd/circleprogress/ArcProgress;

    .line 156
    const v4, 0x7f0e00c9

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->TxtLevel:Landroid/widget/TextView;

    .line 157
    const v4, 0x7f0e00c8

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->TxtVoltage:Landroid/widget/TextView;

    .line 158
    const v4, 0x7f0e00c7

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->TxtTemperature:Landroid/widget/TextView;

    .line 159
    const v4, 0x7f0e00bf

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_WiFi:Landroid/widget/ImageView;

    .line 160
    const v4, 0x7f0e00c2

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Rotate:Landroid/widget/ImageView;

    .line 161
    const v4, 0x7f0e00c1

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Brightness:Landroid/widget/ImageView;

    .line 162
    const v4, 0x7f0e00c0

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Bluetooth:Landroid/widget/ImageView;

    .line 163
    const v4, 0x7f0e00c4

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Timeout:Landroid/widget/ImageView;

    .line 164
    const v4, 0x7f0e00c3

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->Tools_Mode:Landroid/widget/ImageView;

    .line 165
    const v4, 0x7f0e00bb

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->PowerSavingMode:Landroid/widget/Button;

    .line 166
    const v4, 0x7f0e00b4

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/CardView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->CardViewBatteryArc:Landroid/support/v7/widget/CardView;

    .line 167
    const v4, 0x7f0e00bc

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/CardView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->CardViewTools:Landroid/support/v7/widget/CardView;

    .line 168
    const v4, 0x7f0e00c6

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/CardView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->batteryDetail:Landroid/support/v7/widget/CardView;

    .line 169
    const v4, 0x7f0e0094

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/CardView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->CardViewRate:Landroid/support/v7/widget/CardView;

    .line 170
    const v4, 0x7f0e009b

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/CardView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->mCardViewShare:Landroid/support/v7/widget/CardView;

    .line 171
    const v4, 0x7f0e0099

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->btn_feedback:Landroid/widget/Button;

    .line 172
    const v4, 0x7f0e009a

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->btn_ratenow:Landroid/widget/Button;

    .line 173
    const v4, 0x7f0e00b8

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->AlertLout:Landroid/widget/RelativeLayout;

    .line 174
    const v4, 0x7f0e00ba

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->mAlertText:Landroid/widget/TextView;

    .line 177
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v4

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 179
    const v4, 0x7f0e00c5

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/NativeExpressAdView;

    .line 180
    .local v1, "adView":Lcom/google/android/gms/ads/NativeExpressAdView;
    new-instance v4, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/NativeExpressAdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 181
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 182
    new-instance v4, Lcom/codecanyon/fast/charging/MainActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/codecanyon/fast/charging/MainActivity$2;-><init>(Lcom/codecanyon/fast/charging/MainActivity;Lcom/google/android/gms/ads/NativeExpressAdView;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/ads/NativeExpressAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 190
    const v4, 0x7f0e009f

    invoke-virtual {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/AdView;

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 191
    new-instance v4, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 192
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 193
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v5, Lcom/codecanyon/fast/charging/MainActivity$3;

    invoke-direct {v5, p0}, Lcom/codecanyon/fast/charging/MainActivity$3;-><init>(Lcom/codecanyon/fast/charging/MainActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 201
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/codecanyon/fast/charging/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/MainActivity;->setColorToCardview()V

    .line 205
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    .line 206
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->window:Landroid/view/Window;

    .line 207
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_4

    .line 208
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    :try_start_0
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->brightness:I

    .line 212
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->rotate:I

    .line 213
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    .line 215
    iget v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    if-le v4, v7, :cond_1

    .line 216
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    .line 217
    const v4, 0x9c40

    iput v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/MainActivity;->CheckOnAndOff()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getBatteryPercentage()V

    .line 265
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/MainActivity;->SetClickListner()V

    .line 266
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->CheckIntentToolsOnOrOff()V

    .line 268
    new-instance v4, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 269
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 272
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v5, Lcom/codecanyon/fast/charging/MainActivity$4;

    invoke-direct {v5, p0}, Lcom/codecanyon/fast/charging/MainActivity$4;-><init>(Lcom/codecanyon/fast/charging/MainActivity;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 278
    return-void

    .line 222
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "Error"

    const-string v5, "Cannot access system brightness"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 229
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 230
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_3

    .line 231
    invoke-virtual {v3}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 233
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->donotdisterb_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 235
    :cond_3
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->writesetting_dialog:Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 241
    .end local v3    # "notificationManager":Landroid/app/NotificationManager;
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->brightness:I

    .line 243
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->rotate:I

    .line 244
    iget-object v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    .line 246
    const-string v4, "timeout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    if-le v4, v7, :cond_5

    .line 249
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    .line 250
    const v4, 0x9c40

    iput v4, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    .line 253
    :cond_5
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/MainActivity;->CheckOnAndOff()V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 255
    :catch_1
    move-exception v2

    .line 257
    .restart local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "Error"

    const-string v5, "Cannot access system brightness"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 824
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 409
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 410
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 830
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 843
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 845
    :goto_0
    return v0

    .line 833
    :sswitch_0
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->finish()V

    .line 845
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 837
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/codecanyon/fast/charging/SettingPrefrence;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    .line 838
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity;->i:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 830
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0e010b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const v4, 0x9c40

    .line 481
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 482
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/MainActivity;->CheckIntentToolsOnOrOff()V

    .line 483
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 484
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 487
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->brightness:I

    .line 488
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->rotate:I

    .line 489
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->cResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    .line 491
    iget v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    if-le v1, v4, :cond_0

    .line 492
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/codecanyon/fast/charging/MainActivity;->setTimeout(I)V

    .line 493
    const v1, 0x9c40

    iput v1, p0, Lcom/codecanyon/fast/charging/MainActivity;->timeout:I

    .line 496
    :cond_0
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/MainActivity;->CheckOnAndOff()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_1
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "Error"

    const-string v2, "Cannot access system brightness"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
