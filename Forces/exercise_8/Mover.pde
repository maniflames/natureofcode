class Mover {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;
  float diameter; 
  
  Mover(PVector position, float mass) {
    this.position = position;
    this.velocity = new PVector(0, 1); //this base velocity & the start position are important factors for a circular motion
    this.acceleration = new PVector(); 
    this.mass = mass;
    this.diameter = mass * 15;
  }
  
  void applyForce(PVector force) {
    this.acceleration.add(PVector.div(force, mass));
  }
  
  void update() {
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity);
    this.acceleration.mult(0);
    
    fill(255);
    noStroke(); 
    circle(this.position.x, this.position.y, this.diameter);
  }
}
