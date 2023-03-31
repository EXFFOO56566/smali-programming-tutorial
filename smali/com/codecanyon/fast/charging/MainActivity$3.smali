.class Lcom/codecanyon/fast/charging/MainActivity$3;
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


# direct methods
.method constructor <init>(Lcom/codecanyon/fast/charging/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codecanyon/fast/charging/MainActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity$3;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 197
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$3;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/MainActivity;->access$000(Lcom/codecanyon/fast/charging/MainActivity;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 198
    return-void
.end method
