.class final Lcom/google/android/gms/internal/zzaud$zzc;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask",
        "<TV;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/internal/zzaud$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbtX:Ljava/lang/String;

.field final synthetic zzbtY:Lcom/google/android/gms/internal/zzaud;

.field private final zzbtZ:J

.field private final zzbua:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaud;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtY:Lcom/google/android/gms/internal/zzaud;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzaud;->zzMr()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtZ:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtX:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbua:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtZ:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaud;->zzKk()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLX()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Tasks index overflow"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzaud;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtY:Lcom/google/android/gms/internal/zzaud;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzaud;->zzMr()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtZ:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtX:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbua:Z

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtZ:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaud;->zzKk()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLX()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Tasks index overflow"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzatx$zza;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/internal/zzaud$zzc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaud$zzc;->zzb(Lcom/google/android/gms/internal/zzaud$zzc;)I

    move-result v0

    return v0
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtY:Lcom/google/android/gms/internal/zzaud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzKk()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLX()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtX:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzaud$zza;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaud$zzc;)I
    .locals 6
    .param p1    # Lcom/google/android/gms/internal/zzaud$zzc;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbua:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzaud$zzc;->zzbua:Z

    if-eq v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbua:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtZ:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtZ:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtZ:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtZ:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtY:Lcom/google/android/gms/internal/zzaud;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaud;->zzKk()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLY()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Two tasks share the same index. index"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzaud$zzc;->zzbtZ:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
