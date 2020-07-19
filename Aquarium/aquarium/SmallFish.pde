class SmallFish extends Fish {
  SmallFish(PVector location, PVector area) {
    super(location, area);
    this.maxSpeed = 5;
  }
  
  void changeAcceleration() {
    this.acceleration = new PVector(random(-0.1, 0.1), random(-0.1, 0.1), random(-0.1, 0.1)); 
  }
}
