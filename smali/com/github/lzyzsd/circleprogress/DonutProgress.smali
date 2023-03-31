.class public Lcom/github/lzyzsd/circleprogress/DonutProgress;
.super Landroid/view/View;
.source "DonutProgress.java"


# static fields
.field private static final INSTANCE_BACKGROUND_COLOR:Ljava/lang/String; = "inner_background_color"

.field private static final INSTANCE_FINISHED_STROKE_COLOR:Ljava/lang/String; = "finished_stroke_color"

.field private static final INSTANCE_FINISHED_STROKE_WIDTH:Ljava/lang/String; = "finished_stroke_width"

.field private static final INSTANCE_INNER_BOTTOM_TEXT:Ljava/lang/String; = "inner_bottom_text"

.field private static final INSTANCE_INNER_BOTTOM_TEXT_COLOR:Ljava/lang/String; = "inner_bottom_text_color"

.field private static final INSTANCE_INNER_BOTTOM_TEXT_SIZE:Ljava/lang/String; = "inner_bottom_text_size"

.field private static final INSTANCE_MAX:Ljava/lang/String; = "max"

.field private static final INSTANCE_PREFIX:Ljava/lang/String; = "prefix"

.field private static final INSTANCE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "saved_instance"

.field private static final INSTANCE_SUFFIX:Ljava/lang/String; = "suffix"

.field private static final INSTANCE_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final INSTANCE_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static final INSTANCE_UNFINISHED_STROKE_COLOR:Ljava/lang/String; = "unfinished_stroke_color"

.field private static final INSTANCE_UNFINISHED_STROKE_WIDTH:Ljava/lang/String; = "unfinished_stroke_width"


# instance fields
.field private final default_finished_color:I

.field private final default_inner_background_color:I

.field private final default_inner_bottom_text_color:I

.field private final default_inner_bottom_text_size:F

.field private final default_max:I

.field private final default_stroke_width:F

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_unfinished_color:I

.field private finishedOuterRect:Landroid/graphics/RectF;

.field private finishedPaint:Landroid/graphics/Paint;

.field private finishedStrokeColor:I

.field private finishedStrokeWidth:F

.field private innerBackgroundColor:I

.field private innerBottomText:Ljava/lang/String;

.field private innerBottomTextColor:I

.field private innerBottomTextHeight:F

.field protected innerBottomTextPaint:Landroid/graphics/Paint;

.field private innerBottomTextSize:F

.field private innerCirclePaint:Landroid/graphics/Paint;

.field private max:I

.field private final min_size:I

.field private prefixText:Ljava/lang/String;

.field private progress:I

.field private suffixText:Ljava/lang/String;

.field private textColor:I

.field protected textPaint:Landroid/graphics/Paint;

.field private textSize:F

.field private unfinishedOuterRect:Landroid/graphics/RectF;

.field private unfinishedPaint:Landroid/graphics/Paint;

.field private unfinishedStrokeColor:I

.field private unfinishedStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v6, 0xf1

    const/16 v5, 0xcc

    const/16 v4, 0x91

    const/16 v2, 0x42

    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedOuterRect:Landroid/graphics/RectF;

    .line 27
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedOuterRect:Landroid/graphics/RectF;

    .line 32
    iput v3, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:I

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    .line 40
    const-string v1, "%"

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    .line 46
    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_finished_color:I

    .line 47
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_unfinished_color:I

    .line 48
    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_text_color:I

    .line 49
    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_bottom_text_color:I

    .line 50
    iput v3, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_background_color:I

    .line 51
    const/16 v1, 0x64

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_max:I

    .line 84
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->sp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_text_size:F

    .line 85
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->dp2px(Landroid/content/res/Resources;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->min_size:I

    .line 86
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->dp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_stroke_width:F

    .line 87
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/github/lzyzsd/circleprogress/Utils;->sp2px(Landroid/content/res/Resources;F)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_bottom_text_size:F

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress:[I

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->initByAttributes(Landroid/content/res/TypedArray;)V

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->initPainters()V

    .line 94
    return-void
.end method

.method private getProgressAngle()F
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getProgress()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->max:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private measure(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 302
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 303
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 304
    .local v2, "size":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 305
    move v1, v2

    .line 312
    .local v1, "result":I
    :cond_0
    :goto_0
    return v1

    .line 307
    .end local v1    # "result":I
    :cond_1
    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->min_size:I

    .line 308
    .restart local v1    # "result":I
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 309
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getFinishedStrokeColor()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeColor:I

    return v0
.end method

.method public getFinishedStrokeWidth()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    return v0
.end method

.method public getInnerBackgroundColor()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBackgroundColor:I

    return v0
.end method

.method public getInnerBottomText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomText:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerBottomTextColor()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    return v0
.end method

.method public getInnerBottomTextSize()F
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->max:I

    return v0
.end method

.method public getPrefixText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:I

    return v0
.end method

.method public getSuffixText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textSize:F

    return v0
.end method

.method public getUnfinishedStrokeColor()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeColor:I

    return v0
.end method

.method public getUnfinishedStrokeWidth()F
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    return v0
.end method

.method protected initByAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attributes"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 125
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_finished_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_finished_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeColor:I

    .line 126
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_unfinished_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_unfinished_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeColor:I

    .line 127
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_text_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_text_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textColor:I

    .line 128
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_text_size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textSize:F

    .line 130
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_max:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setMax(I)V

    .line 131
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_progress:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setProgress(I)V

    .line 132
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_finished_stroke_width:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_stroke_width:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    .line 133
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_unfinished_stroke_width:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_stroke_width:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    .line 134
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_prefix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_prefix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    .line 137
    :cond_0
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    .line 140
    :cond_1
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_background_color:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBackgroundColor:I

    .line 142
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_inner_bottom_text_size:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_bottom_text_size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    .line 143
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_inner_bottom_text_color:I

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->default_inner_bottom_text_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    .line 144
    sget v0, Lcom/github/lzyzsd/circleprogress/R$styleable;->DonutProgress_donut_inner_bottom_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomText:Ljava/lang/String;

    .line 145
    return-void
.end method

.method protected initPainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 97
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 100
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    .line 114
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerCirclePaint:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->initPainters()V

    .line 150
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 151
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    .line 317
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 319
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 320
    .local v7, "delta":F
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedOuterRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v7

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 324
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedOuterRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v7

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 329
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    iget v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    iget v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    div-float v8, v0, v11

    .line 330
    .local v8, "innerCircleRadius":F
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v11

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 331
    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedOuterRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getProgressAngle()F

    move-result v3

    iget-object v5, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 332
    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedOuterRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getProgressAngle()F

    move-result v2

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-direct {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getProgressAngle()F

    move-result v3

    sub-float v3, v0, v3

    iget-object v5, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 335
    .local v9, "text":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float v10, v0, v1

    .line 337
    .local v10, "textHeight":F
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v11

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v10

    div-float/2addr v1, v11

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 340
    .end local v10    # "textHeight":F
    :cond_0
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 342
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextHeight:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v11

    sub-float v6, v0, v1

    .line 343
    .local v6, "bottomTextBaseline":F
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v11

    iget-object v2, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 346
    .end local v6    # "bottomTextBaseline":F
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->measure(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->measure(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setMeasuredDimension(II)V

    .line 297
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextHeight:F

    .line 298
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 372
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 373
    check-cast v0, Landroid/os/Bundle;

    .line 374
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textColor:I

    .line 375
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textSize:F

    .line 376
    const-string v1, "inner_bottom_text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    .line 377
    const-string v1, "inner_bottom_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomText:Ljava/lang/String;

    .line 378
    const-string v1, "inner_bottom_text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    .line 379
    const-string v1, "finished_stroke_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeColor:I

    .line 380
    const-string v1, "unfinished_stroke_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeColor:I

    .line 381
    const-string v1, "finished_stroke_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    .line 382
    const-string v1, "unfinished_stroke_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    .line 383
    const-string v1, "inner_background_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBackgroundColor:I

    .line 384
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->initPainters()V

    .line 385
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setMax(I)V

    .line 386
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->setProgress(I)V

    .line 387
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    .line 388
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    .line 389
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 393
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 350
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 352
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 354
    const-string v1, "inner_bottom_text_size"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 355
    const-string v1, "inner_bottom_text_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomTextColor()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 356
    const-string v1, "inner_bottom_text"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "inner_bottom_text_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBottomTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 358
    const-string v1, "finished_stroke_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getFinishedStrokeColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    const-string v1, "unfinished_stroke_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getUnfinishedStrokeColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getPrefixText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "finished_stroke_width"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getFinishedStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 365
    const-string v1, "unfinished_stroke_width"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getUnfinishedStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 366
    const-string v1, "inner_background_color"

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getInnerBackgroundColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 367
    return-object v0
.end method

.method public setFinishedStrokeColor(I)V
    .locals 0
    .param p1, "finishedStrokeColor"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeColor:I

    .line 222
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 223
    return-void
.end method

.method public setFinishedStrokeWidth(F)V
    .locals 0
    .param p1, "finishedStrokeWidth"    # F

    .prologue
    .line 158
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->finishedStrokeWidth:F

    .line 159
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 160
    return-void
.end method

.method public setInnerBackgroundColor(I)V
    .locals 0
    .param p1, "innerBackgroundColor"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBackgroundColor:I

    .line 258
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 259
    return-void
.end method

.method public setInnerBottomText(Ljava/lang/String;)V
    .locals 0
    .param p1, "innerBottomText"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomText:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 269
    return-void
.end method

.method public setInnerBottomTextColor(I)V
    .locals 0
    .param p1, "innerBottomTextColor"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextColor:I

    .line 287
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 288
    return-void
.end method

.method public setInnerBottomTextSize(F)V
    .locals 0
    .param p1, "innerBottomTextSize"    # F

    .prologue
    .line 277
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->innerBottomTextSize:F

    .line 278
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 279
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 192
    if-lez p1, :cond_0

    .line 193
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->max:I

    .line 194
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 196
    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixText"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->prefixText:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 250
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 180
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:I

    .line 181
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getMax()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 182
    iget v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:I

    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->getMax()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->progress:I

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 185
    return-void
.end method

.method public setSuffixText(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffixText"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->suffixText:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 241
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textColor:I

    .line 213
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 214
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 203
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->textSize:F

    .line 204
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 205
    return-void
.end method

.method public setUnfinishedStrokeColor(I)V
    .locals 0
    .param p1, "unfinishedStrokeColor"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeColor:I

    .line 231
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 232
    return-void
.end method

.method public setUnfinishedStrokeWidth(F)V
    .locals 0
    .param p1, "unfinishedStrokeWidth"    # F

    .prologue
    .line 167
    iput p1, p0, Lcom/github/lzyzsd/circleprogress/DonutProgress;->unfinishedStrokeWidth:F

    .line 168
    invoke-virtual {p0}, Lcom/github/lzyzsd/circleprogress/DonutProgress;->invalidate()V

    .line 169
    return-void
.end method
