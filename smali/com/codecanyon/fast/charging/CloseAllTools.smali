.class public Lcom/codecanyon/fast/charging/CloseAllTools;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CloseAllTools.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field AroplaneCardView:Landroid/support/v7/widget/CardView;

.field AroplaneTurnOn:Landroid/widget/Button;

.field LocationCardView:Landroid/support/v7/widget/CardView;

.field LocationTurnOff:Landroid/widget/Button;

.field ManagerForLocation:Landroid/location/LocationManager;

.field MoblieDataCardView:Landroid/support/v7/widget/CardView;

.field MoblieDataTurnOff:Landroid/widget/Button;

.field SetValue:Ljava/lang/Integer;

.field TxtTitleAroplane:Landroid/widget/TextView;

.field TxtTitleLocation:Landroid/widget/TextView;

.field TxtTitleMobileData:Landroid/widget/TextView;

.field loutIssues:Landroid/widget/RelativeLayout;

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field statusOfLocation:Ljava/lang/Boolean;

.field toolbar:Landroid/support/v7/widget/Toolbar;

.field txtDicAroplane:Landroid/widget/TextView;

.field txtDicLocation:Landroid/widget/TextView;

.field txtDicMobileData:Landroid/widget/TextView;

.field txtNoMoreIssue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private CheckWhatOn()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 134
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->isMobileDataEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->MoblieDataCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 138
    :cond_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->ManagerForLocation:Landroid/location/LocationManager;

    .line 139
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->ManagerForLocation:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->statusOfLocation:Ljava/lang/Boolean;

    .line 141
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->statusOfLocation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->LocationCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codecanyon/fast/charging/CloseAllTools;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->AroplaneCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->LocationCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->AroplaneCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->MoblieDataCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0}, Landroid/support/v7/widget/CardView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 150
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtNoMoreIssue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->loutIssues:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 153
    :cond_3
    return-void
.end method

.method private SetCarViewColor()V
    .locals 4

    .prologue
    const v3, 0x7f0d005a

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->LocationCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 124
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->AroplaneCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 125
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->MoblieDataCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setCardBackgroundColor(I)V

    .line 126
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->LocationCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 127
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->AroplaneCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 128
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->MoblieDataCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/CardView;->setCardElevation(F)V

    .line 130
    return-void
.end method

.method private SetUpAroplaneIntent()V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/CloseAllTools;->startActivity(Landroid/content/Intent;)V

    .line 209
    return-void
.end method

.method private SetUpLocationIntent()V
    .locals 2

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/CloseAllTools;->startActivity(Landroid/content/Intent;)V

    .line 214
    return-void
.end method

.method private SetUpMobileDataIntent()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/codecanyon/fast/charging/CloseAllTools;->startActivity(Landroid/content/Intent;)V

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/codecanyon/fast/charging/CloseAllTools;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/CloseAllTools;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
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


# virtual methods
.method public isMobileDataEnabled()Ljava/lang/Boolean;
    .locals 7

    .prologue
    .line 217
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/codecanyon/fast/charging/CloseAllTools;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "connectivityService":Ljava/lang/Object;
    move-object v1, v2

    .line 218
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 221
    .local v1, "cm":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 222
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getMobileDataEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 223
    .local v4, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 224
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v5

    .line 225
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 162
    :sswitch_0
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->SetUpLocationIntent()V

    goto :goto_0

    .line 168
    :sswitch_1
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->SetUpAroplaneIntent()V

    goto :goto_0

    .line 174
    :sswitch_2
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->SetUpMobileDataIntent()V

    goto :goto_0

    .line 180
    :sswitch_3
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->SetUpLocationIntent()V

    goto :goto_0

    .line 186
    :sswitch_4
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->SetUpAroplaneIntent()V

    goto :goto_0

    .line 192
    :sswitch_5
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->SetUpMobileDataIntent()V

    goto :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x7f0e00a3 -> :sswitch_0
        0x7f0e00a6 -> :sswitch_3
        0x7f0e00a7 -> :sswitch_1
        0x7f0e00ac -> :sswitch_4
        0x7f0e00ad -> :sswitch_2
        0x7f0e00b2 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SetValue"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->SetValue:Ljava/lang/Integer;

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 55
    :cond_0
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->setContentView(I)V

    .line 56
    const v1, 0x7f0e008d

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 57
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 58
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 59
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->SetValue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "Battery Saver"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    const v1, 0x7f0e00a3

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->LocationCardView:Landroid/support/v7/widget/CardView;

    .line 66
    const v1, 0x7f0e00a7

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->AroplaneCardView:Landroid/support/v7/widget/CardView;

    .line 67
    const v1, 0x7f0e00ad

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->MoblieDataCardView:Landroid/support/v7/widget/CardView;

    .line 68
    const v1, 0x7f0e00a6

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->LocationTurnOff:Landroid/widget/Button;

    .line 69
    const v1, 0x7f0e00ac

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->AroplaneTurnOn:Landroid/widget/Button;

    .line 70
    const v1, 0x7f0e00b2

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->MoblieDataTurnOff:Landroid/widget/Button;

    .line 71
    const v1, 0x7f0e00a0

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtNoMoreIssue:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f0e00a4

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->TxtTitleLocation:Landroid/widget/TextView;

    .line 73
    const v1, 0x7f0e00a5

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtDicLocation:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0e00a9

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->TxtTitleAroplane:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0e00aa

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtDicAroplane:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0e00af

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->TxtTitleMobileData:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0e00b0

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtDicMobileData:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0e00a1

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->loutIssues:Landroid/widget/RelativeLayout;

    .line 79
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->LocationCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->AroplaneCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->MoblieDataCardView:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->LocationTurnOff:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->AroplaneTurnOn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->MoblieDataTurnOff:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->SetCarViewColor()V

    .line 89
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->CheckWhatOn()V

    .line 92
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->SetValue:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->TxtTitleLocation:Landroid/widget/TextView;

    const-string v2, "2x Battery Saver"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtDicLocation:Landroid/widget/TextView;

    const-string v2, "Disable location service and your battery will save 2x"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->TxtTitleAroplane:Landroid/widget/TextView;

    const-string v2, "3x Battery Saver"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtDicAroplane:Landroid/widget/TextView;

    const-string v2, "Enable airplane mode and your battery will save 3x"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->TxtTitleMobileData:Landroid/widget/TextView;

    const-string v2, "2x Battery Saver"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtDicMobileData:Landroid/widget/TextView;

    const-string v2, "Disable mobile data and your battery will save 2x"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_1
    const v1, 0x7f0e009f

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/CloseAllTools;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 109
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 110
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 111
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/codecanyon/fast/charging/CloseAllTools$1;

    invoke-direct {v2, p0}, Lcom/codecanyon/fast/charging/CloseAllTools$1;-><init>(Lcom/codecanyon/fast/charging/CloseAllTools;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 119
    return-void

    .line 62
    .end local v0    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    :cond_1
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "Battery Charger"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->TxtTitleLocation:Landroid/widget/TextView;

    const-string v2, "2x Fast Charger"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtDicLocation:Landroid/widget/TextView;

    const-string v2, "Disable location service and your battery will charge 2x faster"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->TxtTitleAroplane:Landroid/widget/TextView;

    const-string v2, "3x Fast Charger"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtDicAroplane:Landroid/widget/TextView;

    const-string v2, "Enable airplane mode and your battery will charge 3x faster"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->TxtTitleMobileData:Landroid/widget/TextView;

    const-string v2, "2x Fast Charger"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/codecanyon/fast/charging/CloseAllTools;->txtDicMobileData:Landroid/widget/TextView;

    const-string v2, "Disable mobile data and your battery will charge 2x faster"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 259
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 261
    :goto_0
    return v0

    .line 254
    :pswitch_0
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->finish()V

    .line 261
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 240
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->CheckWhatOn()V

    .line 241
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 233
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 234
    invoke-direct {p0}, Lcom/codecanyon/fast/charging/CloseAllTools;->CheckWhatOn()V

    .line 235
    return-void
.end method
