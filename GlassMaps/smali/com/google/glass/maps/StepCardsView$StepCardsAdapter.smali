.class Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;
.super Lcom/google/glass/maps/CardsView$BaseCardsAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/StepCardsView;


# direct methods
.method private constructor <init>(Lcom/google/glass/maps/StepCardsView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;->this$0:Lcom/google/glass/maps/StepCardsView;

    invoke-direct {p0, p1}, Lcom/google/glass/maps/CardsView$BaseCardsAdapter;-><init>(Lcom/google/glass/maps/CardsView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/maps/StepCardsView;Lcom/google/glass/maps/StepCardsView$1;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;-><init>(Lcom/google/glass/maps/StepCardsView;)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;->this$0:Lcom/google/glass/maps/StepCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/StepCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/nav/DataType;->getDataType()Lcom/google/android/maps/driveabout/nav/DataType$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/DataType$Type;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;->this$0:Lcom/google/glass/maps/StepCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/StepCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/nav/DataType;->getDataType()Lcom/google/android/maps/driveabout/nav/DataType$Type;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/nav/DataType$Type;->TRIP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 70
    :goto_0
    if-eqz v0, :cond_2

    .line 72
    instance-of v0, p2, Lcom/google/glass/maps/directions/TripCardView;

    if-eqz v0, :cond_1

    .line 73
    check-cast p2, Lcom/google/glass/maps/directions/TripCardView;

    .line 77
    :goto_1
    iget-object v0, p0, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;->this$0:Lcom/google/glass/maps/StepCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/StepCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/glass/maps/directions/Trip;

    invoke-virtual {p2, v0}, Lcom/google/glass/maps/directions/TripCardView;->setTrip(Lcom/google/glass/maps/directions/Trip;)V

    .line 90
    :goto_2
    return-object p2

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_1
    new-instance p2, Lcom/google/glass/maps/directions/TripCardView;

    iget-object v0, p0, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;->this$0:Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/glass/maps/directions/TripCardView;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 81
    :cond_2
    instance-of v0, p2, Lcom/google/glass/maps/directions/StepCardView;

    if-eqz v0, :cond_3

    .line 82
    check-cast p2, Lcom/google/glass/maps/directions/StepCardView;

    .line 86
    :goto_3
    iget-object v0, p0, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;->this$0:Lcom/google/glass/maps/StepCardsView;

    iget-object v0, v0, Lcom/google/glass/maps/StepCardsView;->items:[Lcom/google/android/maps/driveabout/nav/DataType;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/glass/maps/directions/Step;

    iget-object v1, p0, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;->this$0:Lcom/google/glass/maps/StepCardsView;

    invoke-static {v1}, Lcom/google/glass/maps/StepCardsView;->access$100(Lcom/google/glass/maps/StepCardsView;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/google/glass/maps/directions/StepCardView;->setStep(Lcom/google/glass/maps/directions/Step;I)V

    goto :goto_2

    .line 84
    :cond_3
    new-instance p2, Lcom/google/glass/maps/directions/StepCardView;

    iget-object v0, p0, Lcom/google/glass/maps/StepCardsView$StepCardsAdapter;->this$0:Lcom/google/glass/maps/StepCardsView;

    invoke-virtual {v0}, Lcom/google/glass/maps/StepCardsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/glass/maps/directions/StepCardView;-><init>(Landroid/content/Context;)V

    goto :goto_3
.end method
