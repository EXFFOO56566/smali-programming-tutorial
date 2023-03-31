.class Lcom/codecanyon/fast/charging/MainActivity$4;
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
    .line 272
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity$4;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$4;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-static {v0}, Lcom/codecanyon/fast/charging/MainActivity;->access$100(Lcom/codecanyon/fast/charging/MainActivity;)V

    .line 275
    return-void
.end method
