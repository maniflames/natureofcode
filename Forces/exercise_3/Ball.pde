class Ball {
  PVector position; 
  PVector velocity; 
  PVector acceleration;
  float mass;
  float diameter;
  
  Ball(PVector position, float mass) {
    this.position = position;
    this.velocity = new PVector();
    this.acceleration = new PVector(); 
    this.mass = mass;
    this.diameter = this.mass * 25;
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, this.mass);
    this.acceleration.add(f); 
  }
  
  void update() {
    this.velocity.add(this.acceleration); 
    this.position.add(this.velocity);
    this.acceleration.mult(0);
    
    circle(this.position.x, this.position.y, this.diameter); 
  }
}
