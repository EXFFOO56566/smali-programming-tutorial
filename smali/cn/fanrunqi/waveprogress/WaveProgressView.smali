.class public Lcn/fanrunqi/waveprogress/WaveProgressView;
.super Landroid/view/View;
.source "WaveProgressView.java"


# static fields
.field private static final INVALIDATE:I = 0x777


# instance fields
.field private CurY:F

.field private RefreshGap:I

.field private backgroundBitmap:Landroid/graphics/Bitmap;

.field private currentProgress:I

.field private currentText:Ljava/lang/String;

.field private distance:F

.field private handler:Landroid/os/Handler;

.field private height:I

.field private mPath:Landroid/graphics/Path;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mTextColor:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I

.field private mWaveColor:Ljava/lang/String;

.field private mWaveHalfWidth:F

.field private mWaveHight:F

.field private mWaveSpeed:I

.field private maxProgress:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/fanrunqi/waveprogress/WaveProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/fanrunqi/waveprogress/WaveProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHight:F

    .line 31
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHalfWidth:F

    .line 32
    const-string v0, "#5be4ef"

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveColor:Ljava/lang/String;

    .line 33
    const/16 v0, 0x1e

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveSpeed:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->currentText:Ljava/lang/String;

    .line 37
    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextColor:Ljava/lang/String;

    .line 38
    const/16 v0, 0x29

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextSize:I

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->maxProgress:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->currentProgress:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->distance:F

    .line 45
    const/16 v0, 0xa

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->RefreshGap:I

    .line 48
    new-instance v0, Lcn/fanrunqi/waveprogress/WaveProgressView$1;

    invoke-direct {v0, p0}, Lcn/fanrunqi/waveprogress/WaveProgressView$1;-><init>(Lcn/fanrunqi/waveprogress/WaveProgressView;)V

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->handler:Landroid/os/Handler;

    .line 71
    invoke-direct {p0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->Init()V

    .line 72
    return-void
.end method

.method private Init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 105
    invoke-virtual {p0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "background is null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 111
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPath:Landroid/graphics/Path;

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPathPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextPaint:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 120
    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->handler:Landroid/os/Handler;

    const/16 v1, 0x777

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcn/fanrunqi/waveprogress/WaveProgressView;)I
    .locals 1
    .param p0, "x0"    # Lcn/fanrunqi/waveprogress/WaveProgressView;

    .prologue
    .line 21
    iget v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->RefreshGap:I

    return v0
.end method

.method private createImage()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 140
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveColor:Ljava/lang/String;

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextColor:Ljava/lang/String;

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextPaint:Landroid/graphics/Paint;

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextSize:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 144
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 145
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->width:I

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->height:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 148
    .local v2, "finalBmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->height:I

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->maxProgress:I

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->currentProgress:I

    sub-int/2addr v9, v10

    mul-int/2addr v8, v9

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->maxProgress:I

    div-int/2addr v8, v9

    int-to-float v0, v8

    .line 151
    .local v0, "CurMidY":F
    iget v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->CurY:F

    cmpl-float v8, v8, v0

    if-lez v8, :cond_0

    .line 152
    iget v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->CurY:F

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->CurY:F

    sub-float/2addr v9, v0

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->CurY:F

    .line 154
    :cond_0
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 155
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPath:Landroid/graphics/Path;

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->distance:F

    sub-float v9, v13, v9

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->CurY:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 157
    iget v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->width:I

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHalfWidth:F

    float-to-int v9, v9

    mul-int/lit8 v9, v9, 0x4

    div-int/2addr v8, v9

    add-int/lit8 v7, v8, 0x1

    .line 158
    .local v7, "waveNum":I
    const/4 v5, 0x0

    .line 159
    .local v5, "multiplier":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    mul-int/lit8 v8, v7, 0x3

    if-ge v3, v8, :cond_1

    .line 160
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPath:Landroid/graphics/Path;

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHalfWidth:F

    add-int/lit8 v10, v5, 0x1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->distance:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->CurY:F

    iget v11, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHight:F

    sub-float/2addr v10, v11

    iget v11, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHalfWidth:F

    add-int/lit8 v12, v5, 0x2

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget v12, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->distance:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->CurY:F

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 161
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPath:Landroid/graphics/Path;

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHalfWidth:F

    add-int/lit8 v10, v5, 0x3

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->distance:F

    sub-float/2addr v9, v10

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->CurY:F

    iget v11, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHight:F

    add-float/2addr v10, v11

    iget v11, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHalfWidth:F

    add-int/lit8 v12, v5, 0x4

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget v12, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->distance:F

    sub-float/2addr v11, v12

    iget v12, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->CurY:F

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 162
    add-int/lit8 v5, v5, 0x4

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iget v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->distance:F

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHalfWidth:F

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveSpeed:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->distance:F

    .line 165
    iget v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->distance:F

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHalfWidth:F

    const/high16 v10, 0x40800000    # 4.0f

    mul-float/2addr v9, v10

    rem-float/2addr v8, v9

    iput v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->distance:F

    .line 167
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPath:Landroid/graphics/Path;

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->width:I

    int-to-float v9, v9

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->height:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 168
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPath:Landroid/graphics/Path;

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->height:I

    int-to-float v9, v9

    invoke-virtual {v8, v13, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 170
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPath:Landroid/graphics/Path;

    iget-object v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 172
    iget v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->width:I

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->height:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 173
    .local v4, "min":I
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->backgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    invoke-static {v8, v4, v4, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->backgroundBitmap:Landroid/graphics/Bitmap;

    .line 175
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 177
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->backgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v8, v13, v13, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 179
    iget-object v8, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->currentText:Ljava/lang/String;

    iget v9, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->width:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget v10, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->height:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget-object v11, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 180
    return-object v2
.end method

.method private getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 184
    if-nez p1, :cond_0

    move-object v0, v3

    .line 198
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 187
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    instance-of v4, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_1

    .line 188
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 192
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 194
    .local v1, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 195
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/OutOfMemoryError;
    move-object v0, v3

    .line 198
    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->backgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcn/fanrunqi/waveprogress/WaveProgressView;->createImage()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->width:I

    .line 128
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->height:I

    int-to-float v0, v0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->CurY:F

    .line 129
    return-void
.end method

.method public setCurrent(ILjava/lang/String;)V
    .locals 0
    .param p1, "currentProgress"    # I
    .param p2, "currentText"    # Ljava/lang/String;

    .prologue
    .line 75
    iput p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->currentProgress:I

    .line 76
    iput-object p2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->currentText:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 81
    iput p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->maxProgress:I

    .line 82
    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 0
    .param p1, "mTextColor"    # Ljava/lang/String;
    .param p2, "mTextSize"    # I

    .prologue
    .line 86
    iput-object p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextColor:Ljava/lang/String;

    .line 87
    iput p2, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mTextSize:I

    .line 88
    return-void
.end method

.method public setWave(FF)V
    .locals 1
    .param p1, "mWaveHight"    # F
    .param p2, "mWaveWidth"    # F

    .prologue
    .line 91
    iput p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHight:F

    .line 92
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p2, v0

    iput v0, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveHalfWidth:F

    .line 93
    return-void
.end method

.method public setWaveColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWaveColor"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveColor:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setmWaveSpeed(I)V
    .locals 0
    .param p1, "mWaveSpeed"    # I

    .prologue
    .line 101
    iput p1, p0, Lcn/fanrunqi/waveprogress/WaveProgressView;->mWaveSpeed:I

    .line 102
    return-void
.end method
