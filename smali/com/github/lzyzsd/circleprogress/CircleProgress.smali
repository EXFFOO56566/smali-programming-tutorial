.class public Lcom/github/lzyzsd/circleprogress/CircleProgress;
.super Landroid/view/View;
.source "CircleProgress.java"


# static fields
.field private static final INSTANCE_FINISHED_STROKE_COLOR:Ljava/lang/String; = "finished_stroke_color"

.field private static final INSTANCE_MAX:Ljava/lang/String; = "max"

.field private static final INSTANCE_PREFIX:Ljava/lang/String; = "prefix"

.field private static final INSTANCE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "saved_instance"

.field private static final INSTANCE_SUFFIX:Ljava/lang/String; = "suffix"

.field private static final INSTANCE_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final INSTANCE_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static final INSTANCE_UNFINISHED_STROKE_COLOR:Ljava/lang/String; = "unfinished_stroke_color"


# instance fields
.field private final default_finished_color:I

.field private final default_max:I

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_unfinished_color:I

.field private finishedColor:I

.field private max:I

.field private final min_size:I

.field private paint:Landroid/graphics/Paint;

.field private prefixText:Ljava/lang/String;

.field private progress:I

.field private rectF:Landroid/graphics/RectF;

.field private suffixText:Ljava/lang/String;

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:F

.field private unfinishedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xcc

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->rectF:Landroid/graphics/RectF;

    .line 25
    iput v5, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->progress:I

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->prefixText:Ljava/lang/String;

    .line 30
    const-string v1, "%"

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->suffixText:Ljava/lang/String;

    .line 32
    const/16 v1, 0x42

    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->default_finished_color:I

    .line 33
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->default_unfinished_color:I

    .line 34
    const/4 v1, -0x1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->default_text_color:I

    .line 35
    const/16 v1, 0x64

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->default_max:I

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->paint:Landroid/graphics/Paint;

    .line 62
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->sp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->default_text_size:F

    .line 63
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->dp2px(Landroid/content/res/Resources;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->min_size:I

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress:[I

    invoke-virtual {v1, p2, v2, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->initByAttributes(Landroid/content/res/TypedArray;)V

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->initPainters()V

    .line 70
    return-void
.end method


# virtual methods
.method public getDrawText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getPrefixText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFinishedColor()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->finishedColor:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->max:I

    return v0
.end method

.method public getPrefixText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->prefixText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->progress:I

    return v0
.end method

.method public getProgressPercentage()F
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getSuffixText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->suffixText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->min_size:I

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->min_size:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textSize:F

    return v0
.end method

.method public getUnfinishedColor()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->unfinishedColor:I

    return v0
.end method

.method protected initByAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "attributes"    # Landroid/content/res/TypedArray;

    .prologue
    .line 73
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress_circle_finished_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->default_finished_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->finishedColor:I

    .line 74
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress_circle_unfinished_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->default_unfinished_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->unfinishedColor:I

    .line 75
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress_circle_text_color:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textColor:I

    .line 76
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress_circle_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->default_text_size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textSize:F

    .line 78
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress_circle_max:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->setMax(I)V

    .line 79
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress_circle_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->setProgress(I)V

    .line 81
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress_circle_prefix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress_circle_prefix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->setPrefixText(Ljava/lang/String;)V

    .line 84
    :cond_0
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress_circle_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->CircleProgress_circle_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->setSuffixText(Ljava/lang/String;)V

    .line 87
    :cond_1
    return-void
.end method

.method protected initPainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textPaint:Landroid/graphics/Paint;

    .line 91
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->initPainters()V

    .line 101
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 102
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getProgress()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v16, v2, v3

    .line 207
    .local v16, "yHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    .line 208
    .local v13, "radius":F
    sub-float v2, v13, v16

    div-float/2addr v2, v13

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v6

    double-to-float v12, v2

    .line 209
    .local v12, "angle":F
    const/high16 v2, 0x42b40000    # 90.0f

    add-float v4, v2, v12

    .line 210
    .local v4, "startAngle":F
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v12

    sub-float v5, v2, v3

    .line 211
    .local v5, "sweepAngle":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getUnfinishedColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->rectF:Landroid/graphics/RectF;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 215
    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getFinishedColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->rectF:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v8, v2, v12

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v9, v12, v2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->paint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getDrawText()Ljava/lang/String;

    move-result-object v14

    .line 225
    .local v14, "text":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float v15, v2, v3

    .line 227
    .local v15, "textHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v15

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    .end local v15    # "textHeight":F
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->rectF:Landroid/graphics/RectF;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->setMeasuredDimension(II)V

    .line 203
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 248
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 249
    check-cast v0, Landroid/os/Bundle;

    .line 250
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textColor:I

    .line 251
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textSize:F

    .line 252
    const-string v1, "finished_stroke_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->finishedColor:I

    .line 253
    const-string v1, "unfinished_stroke_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->unfinishedColor:I

    .line 254
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->initPainters()V

    .line 255
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->setMax(I)V

    .line 256
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->setProgress(I)V

    .line 257
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->prefixText:Ljava/lang/String;

    .line 258
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->suffixText:Ljava/lang/String;

    .line 259
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 263
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 235
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 237
    const-string v1, "finished_stroke_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getFinishedColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    const-string v1, "unfinished_stroke_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getUnfinishedColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getPrefixText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-object v0
.end method

.method public setFinishedColor(I)V
    .locals 0
    .param p1, "finishedColor"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->finishedColor:I

    .line 151
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->invalidate()V

    .line 152
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 121
    if-lez p1, :cond_0

    .line 122
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->max:I

    .line 123
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->invalidate()V

    .line 125
    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixText"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->prefixText:Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->invalidate()V

    .line 170
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->progress:I

    .line 110
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->progress:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getMax()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 111
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->progress:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->getMax()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->progress:I

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->invalidate()V

    .line 114
    return-void
.end method

.method public setSuffixText(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffixText"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->suffixText:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->invalidate()V

    .line 179
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textColor:I

    .line 142
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->invalidate()V

    .line 143
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 132
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->textSize:F

    .line 133
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->invalidate()V

    .line 134
    return-void
.end method

.method public setUnfinishedColor(I)V
    .locals 0
    .param p1, "unfinishedColor"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/CircleProgress;->unfinishedColor:I

    .line 160
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/CircleProgress;->invalidate()V

    .line 161
    return-void
.end method
