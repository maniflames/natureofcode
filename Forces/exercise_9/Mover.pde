class Mover {
  PVector position;
  PVector velocity; 
  PVector acceleration;
  float mass;
  float diameter;
  
  Mover(PVector position, PVector velocity, float mass) {
    this.position = position;
    this.velocity = velocity; 
    this.acceleration = new PVector(); 
    this.mass = mass;
    this.diameter = mass * 15; 
  }
  
  void applyForce(PVector force) {
    this.acceleration.add(PVector.div(force, this.mass));
  }
  
  void update() {
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity);
    this.acceleration.mult(0);
    
    noStroke();
    fill(255);
    circle(this.position.x, this.position.y, this.diameter);
  }
}
