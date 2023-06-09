.class Lcom/google/android/gms/internal/zzatc;
.super Ljava/lang/Object;


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private zzVX:Ljava/lang/String;

.field private zzaIU:Ljava/lang/String;

.field private zzacM:Ljava/lang/String;

.field private zzbqA:Ljava/lang/String;

.field private zzbqB:J

.field private zzbqC:J

.field private zzbqD:Z

.field private zzbqE:J

.field private zzbqF:J

.field private zzbqG:J

.field private zzbqH:J

.field private zzbqI:J

.field private zzbqJ:J

.field private zzbqK:J

.field private zzbqL:Ljava/lang/String;

.field private zzbqM:Z

.field private zzbqN:J

.field private zzbqO:J

.field private final zzbqg:Lcom/google/android/gms/internal/zzaue;

.field private zzbqu:Ljava/lang/String;

.field private zzbqv:Ljava/lang/String;

.field private zzbqw:J

.field private zzbqx:J

.field private zzbqy:J

.field private zzbqz:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaue;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatc;->mAppId:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    return-void
.end method


# virtual methods
.method public getAppInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzaIU:Ljava/lang/String;

    return-object v0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzVX:Ljava/lang/String;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzacM:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zzae(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatc;->zzacM:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMeasurementEnabled(Z)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqD:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqD:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzKA()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqw:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzKk()Lcom/google/android/gms/internal/zzatx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzatx;->zzLZ()Lcom/google/android/gms/internal/zzatx$zza;

    move-result-object v0

    const-string v1, "Bundle index overflow. appId"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzatc;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzatx;->zzfE(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzatx$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqw:J

    return-void
.end method

.method public zzKB()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqF:J

    return-wide v0
.end method

.method public zzKC()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqG:J

    return-wide v0
.end method

.method public zzKD()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqH:J

    return-wide v0
.end method

.method public zzKE()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqI:J

    return-wide v0
.end method

.method public zzKF()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqK:J

    return-wide v0
.end method

.method public zzKG()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqJ:J

    return-wide v0
.end method

.method public zzKH()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqL:Ljava/lang/String;

    return-object v0
.end method

.method public zzKI()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqL:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzatc;->zzfi(Ljava/lang/String;)V

    return-object v0
.end method

.method public zzKn()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    return-void
.end method

.method public zzKo()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqu:Ljava/lang/String;

    return-object v0
.end method

.method public zzKp()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqv:Ljava/lang/String;

    return-object v0
.end method

.method public zzKq()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqx:J

    return-wide v0
.end method

.method public zzKr()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqy:J

    return-wide v0
.end method

.method public zzKs()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqz:J

    return-wide v0
.end method

.method public zzKt()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqA:Ljava/lang/String;

    return-object v0
.end method

.method public zzKu()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqB:J

    return-wide v0
.end method

.method public zzKv()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqC:J

    return-wide v0
.end method

.method public zzKw()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqD:Z

    return v0
.end method

.method public zzKx()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqw:J

    return-wide v0
.end method

.method public zzKy()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqN:J

    return-wide v0
.end method

.method public zzKz()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqO:J

    return-wide v0
.end method

.method public zzY(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqx:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqx:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzZ(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqy:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqy:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaa(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqz:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqz:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzab(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqB:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqB:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzac(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqC:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqC:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzad(J)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzatc;->zzbqw:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqw:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public zzae(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqN:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqN:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaf(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqO:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqO:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzag(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqF:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqF:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzah(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqG:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqG:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzai(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqH:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqH:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzaj(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqI:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqI:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzak(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqK:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqK:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzal(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqJ:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqJ:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzam(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzatc;->zzbqE:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqE:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzfd(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzaIU:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zzae(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatc;->zzaIU:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzfe(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzVX:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zzae(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatc;->zzVX:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzff(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqu:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zzae(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqu:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzfg(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqv:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zzae(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqv:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzfh(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqA:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zzae(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqA:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzfi(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqL:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzaut;->zzae(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqM:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzatc;->zzbqL:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzke()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public zzmZ()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzacM:Ljava/lang/String;

    return-object v0
.end method

.method public zzuW()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqg:Lcom/google/android/gms/internal/zzaue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaue;->zzmR()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzatc;->zzbqE:J

    return-wide v0
.end method
