.class Lcom/codecanyon/fast/charging/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codecanyon/fast/charging/MainActivity;->setupdialog()V
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
    .line 307
    iput-object p1, p0, Lcom/codecanyon/fast/charging/MainActivity$5;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity$5;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$5;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/codecanyon/fast/charging/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v1, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    .line 311
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$5;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    iget-object v0, v0, Lcom/codecanyon/fast/charging/MainActivity;->am:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/codecanyon/fast/charging/MainActivity$5;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    iget-object v1, v1, Lcom/codecanyon/fast/charging/MainActivity;->Profile:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 312
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$5;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/codecanyon/fast/charging/MainActivity;->access$200(Lcom/codecanyon/fast/charging/MainActivity;I)V

    .line 313
    iget-object v0, p0, Lcom/codecanyon/fast/charging/MainActivity$5;->this$0:Lcom/codecanyon/fast/charging/MainActivity;

    invoke-virtual {v0}, Lcom/codecanyon/fast/charging/MainActivity;->finish()V

    .line 314
    return-void
.end method
