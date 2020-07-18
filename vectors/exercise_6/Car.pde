class Car {
  PVector dimensions;
  PVector position; 
  PVector velocity;
  PVector acceleration;
  float xoff;
  
  Car(PVector position) {
    this.dimensions = new PVector(100, 50);
    this.position = position; 
    this.velocity = new PVector(0, 0); 
    this.xoff = 0.0;
  }
  
  void update() {  
    this.acceleration = new PVector(map(noise(xoff), 0, 1, -0.1, 0.1), 0);
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity);
    
    rectMode(CENTER); 
    rect(this.position.x, this.position.y, this.dimensions.x, this.dimensions.y);
    xoff += 0.01;
  }
}
