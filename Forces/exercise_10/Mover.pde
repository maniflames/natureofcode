class Mover {
  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;
  float diameter;
  
  Mover(PVector position, float mass) {
    this.position = position; 
    this.velocity = new PVector();
    this.acceleration = new PVector(); 
    this.mass = mass;
    this.diameter = mass * 15; 
  }
  
  void applyForce(PVector force) {
    this.acceleration.add(PVector.div(force, mass));
  }
  
  PVector repellentForce(Mover mover) {
    PVector direction = PVector.sub(mover.position, this.position);
    float distance = constrain(direction.mag(), 5, 25);
    direction.normalize();
    
    float magnitude = (1.2 * this.mass * mover.mass) / pow(distance, 2);
    return direction.mult(magnitude);
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
