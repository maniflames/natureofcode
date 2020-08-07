class Ball {
  PVector position;
  PVector velocity;
  PVector acceleration; 
  float mass;
  float radius; 
  
  Ball(PVector position, float mass) {
    this.position = position;
    this.velocity = new PVector(); 
    this.acceleration = new PVector(); 
    this.mass = mass;
    this.radius = mass * 15;
  }
  
  void applyForce(PVector force) {
    this.acceleration.add(PVector.div(force, this.mass));
  }
  
  void update() {
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity);
    this.acceleration.mult(0); 
    
    noFill();
    stroke(255); 
    translate(this.position.x, this.position.y); 
    sphereDetail(8, 4);
    sphere(this.radius);
    translate(-this.position.x, -this.position.y); 
  }
}
