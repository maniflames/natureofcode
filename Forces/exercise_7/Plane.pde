class Plane {
  PVector position;
  PVector dimensions;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Plane(PVector position, PVector dimensions, float mass) {
    this.position = position;
    this.dimensions = dimensions;
    this.velocity = new PVector();
    this.acceleration = new PVector(); 
    this.mass = mass;
  }
  
  void applyForce(PVector force) {
    this.acceleration.add(PVector.div(force, this.mass));
  }
  
  void update() {
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity);
    this.acceleration.mult(0);
    
    fill(255);
    noStroke(); 
    rect(this.position.x, this.position.y, this.dimensions.x, this.dimensions.y);
  }
}
