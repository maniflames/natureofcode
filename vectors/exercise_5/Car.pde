class Car {
  PVector dimensions;
  PVector position; 
  PVector velocity;
  PVector acceleration;
  float speedLimit;
  
  
  Car(PVector position, float speedLimit) {
    this.dimensions = new PVector(100, 50);
    this.position = position; 
    this.velocity = new PVector(0, 0); 
    this.acceleration = new PVector(0, 0);
    this.speedLimit = speedLimit;
  }
  
  void update() {
    if(this.acceleration.x < 0) {
      if(this.velocity.x <= 0) {
        this.acceleration.x = 0;
        this.velocity.x = 0;
      }
    } else {
      this.velocity.limit(this.speedLimit);
    }
   
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity);
    
    rectMode(CENTER); 
    rect(this.position.x, this.position.y, this.dimensions.x, this.dimensions.y);
  }
}
