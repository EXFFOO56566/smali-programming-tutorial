.class public Lcom/github/lzyzsd/circleprogress/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/res/Resources;F)F
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dp"    # F

    .prologue
    .line 10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method public static sp2px(Landroid/content/res/Resources;F)F
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "sp"    # F

    .prologue
    .line 15
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 16
    .local v0, "scale":F
    mul-float v1, p1, v0

    return v1
.end method
