.class Lcom/codecanyon/fast/charging/BatteryDetailActivity$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "BatteryDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/BatteryDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/BatteryDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$2;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 99
    iget-object v0, p0, Lcom/codecanyon/fast/charging/BatteryDetailActivity$2;->this$0:Lcom/codecanyon/fast/charging/BatteryDetailActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/BatteryDetailActivity;->access$000(Lcom/codecanyon/fast/charging/BatteryDetailActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 100
    return-void
.end method
