.class public Lcom/codecanyon/fast/charging/BatteryDetailActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BatteryDetailActivity.java"


# instance fields
.field public batteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field detailImage:[Ljava/lang/Integer;

.field detailList:Landroid/widget/ListView;

.field detail_name:[Ljava/lang/String;

.field detail_value:[Ljava/lang/String;

.field listAdepter:Lcom/codecanyon/fast/charging/ListAdepter;

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Temperature"

    aput-object v1, v0, v2

    const-string v1, "Voltage"

    aput-object v1, v0, v3

    const-string v1, "Level"

    aput-object v1, v0, v4

    const-string v1, "Technology"

    aput-object v1, v0, v5

    const-string v1, "Health"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_name:[Ljava/lang/String;

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detail_value:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x7f020088

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f020098

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f020057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f020087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f020056

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detailImage:[Ljava/lang/Integer;

    .line 31
    new-instance v0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/codecanyon/fast/charging/BatteryDetailActivity$1;-><init>(Lcom/codecanyon/fast/charging/BatteryDetailActivity;)V

    iput-object v0, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/codecanyon/fast/charging/BatteryDetailActivity;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 82
    :cond_0
    const v1, 0x7f04001c

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->setContentView(I)V

    .line 83
    const v1, 0x7f0e008d

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 84
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 85
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 86
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "Battery information"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    const v1, 0x7f0e009e

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->detailList:Landroid/widget/ListView;

    .line 89
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const v1, 0x7f0e009f

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 92
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 94
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 95
    iget-object v1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/codecanyon/fast/charging/BatteryDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/codecanyon/fast/charging/BatteryDetailActivity$2;-><init>(Lcom/codecanyon/fast/charging/BatteryDetailActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 103
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->finish()V

    .line 111
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
