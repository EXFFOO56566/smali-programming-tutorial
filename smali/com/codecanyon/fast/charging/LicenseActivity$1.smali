.class Lcom/codecanyon/fast/charging/LicenseActivity$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "LicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/LicenseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codecanyon/fast/charging/LicenseActivity;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/LicenseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/LicenseActivity;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/codecanyon/fast/charging/LicenseActivity$1;->this$0:Lcom/codecanyon/fast/charging/LicenseActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 43
    iget-object v0, p0, Lcom/codecanyon/fast/charging/LicenseActivity$1;->this$0:Lcom/codecanyon/fast/charging/LicenseActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/LicenseActivity;->access$000(Lcom/codecanyon/fast/charging/LicenseActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 44
    return-void
.end method
