.class public Lcom/codecanyon/fast/charging/SettingPrefrence;
.super Landroid/support/v7/app/AppCompatActivity;
.source "SettingPrefrence.java"


# instance fields
.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codecanyon/fast/charging/SettingPrefrence;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/SettingPrefrence;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/codecanyon/fast/charging/SettingPrefrence;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/SettingPrefrence;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/SettingPrefrence;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f040020

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/SettingPrefrence;->setContentView(I)V

    .line 29
    const v1, 0x7f0a0124

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/SettingPrefrence;->setTheme(I)V

    .line 30
    const v1, 0x7f0e008d

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/SettingPrefrence;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/SettingPrefrence;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 31
    iget-object v1, p0, Lcom/codecanyon/fast/charging/SettingPrefrence;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/SettingPrefrence;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 32
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/SettingPrefrence;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "Setting"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lcom/codecanyon/fast/charging/SettingPrefrence;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 34
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/SettingPrefrence;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/SettingPrefrence;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0e00cc

    new-instance v3, Lcom/codecanyon/fast/charging/SettingActivity;

    invoke-direct {v3}, Lcom/codecanyon/fast/charging/SettingActivity;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 38
    const v1, 0x7f0e009f

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/SettingPrefrence;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/SettingPrefrence;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 39
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 41
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lcom/codecanyon/fast/charging/SettingPrefrence;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 42
    iget-object v1, p0, Lcom/codecanyon/fast/charging/SettingPrefrence;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/codecanyon/fast/charging/SettingPrefrence$1;

    invoke-direct {v2, p0}, Lcom/codecanyon/fast/charging/SettingPrefrence$1;-><init>(Lcom/codecanyon/fast/charging/SettingPrefrence;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 50
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 60
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/SettingPrefrence;->finish()V

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
