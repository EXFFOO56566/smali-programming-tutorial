.class public Lcom/codecanyon/fast/charging/LicenseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "LicenseActivity.java"


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

.method static synthetic access$000(Lcom/codecanyon/fast/charging/LicenseActivity;)Lcom/google/android/gms/ads/AdView;
    .locals 1
    .param p0, "x0"    # Lcom/codecanyon/fast/charging/LicenseActivity;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/codecanyon/fast/charging/LicenseActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/LicenseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/LicenseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f04001e

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/LicenseActivity;->setContentView(I)V

    .line 29
    const v1, 0x7f0e008d

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/LicenseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 30
    iget-object v1, p0, Lcom/codecanyon/fast/charging/LicenseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 31
    iget-object v1, p0, Lcom/codecanyon/fast/charging/LicenseActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/LicenseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 32
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/LicenseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const-string v2, "License"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/LicenseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 35
    const v1, 0x7f0e009f

    invoke-virtual {p0, v1}, Lcom/codecanyon/fast/charging/LicenseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    iput-object v1, p0, Lcom/codecanyon/fast/charging/LicenseActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 36
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 38
    .local v0, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    iget-object v1, p0, Lcom/codecanyon/fast/charging/LicenseActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 39
    iget-object v1, p0, Lcom/codecanyon/fast/charging/LicenseActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/codecanyon/fast/charging/LicenseActivity$1;

    invoke-direct {v2, p0}, Lcom/codecanyon/fast/charging/LicenseActivity$1;-><init>(Lcom/codecanyon/fast/charging/LicenseActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 57
    .local v0, "id":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/codecanyon/fast/charging/LicenseActivity;->finish()V

    .line 60
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
