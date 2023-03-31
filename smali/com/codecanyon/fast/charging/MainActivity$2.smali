.class Lcom/codecanyon/fast/charging/MainActivity$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codecanyon/fast/charging/MainActivity;

.field final synthetic val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/MainActivity;Lcom/google/android/gms/ads/NativeExpressAdView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/MainActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity$2;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    iput-object p2, p0, Lcom/codecanyon/fast/charging/MainActivity$2;->val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 186
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$2;->val$adView:Lcom/google/android/gms/ads/NativeExpressAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/NativeExpressAdView;->setVisibility(I)V

    .line 187
    return-void
.end method
