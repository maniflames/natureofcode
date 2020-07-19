class BigFish extends Fish {
  BigFish(PVector location, PVector area) {
    super(location, area);
    this.maxSpeed = 1.5;
  }
  
  void changeAcceleration() {
    this.acceleration = new PVector(random(-0.02, 0.02), random(-0.02, 0.02), random(-0.02, 0.02)); 
  }
}
