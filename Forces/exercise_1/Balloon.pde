class Balloon {
  PVector position;
  PVector velocity; 
  PVector acceleration;
  int diameter;
  
  Balloon(PVector position) {
    this.position = position; 
    this.velocity = new PVector();
    this.acceleration = new PVector(); 
    this.diameter = 100;
  }
  
  void applyForce(PVector force) {
    this.acceleration.add(force); 
  }
  
  void update() {
    this.velocity.add(this.acceleration);
    this.position.add(this.velocity); 
    this.acceleration.mult(0); 
    
    noStroke();
    fill(255); 
    circle(position.x, position.y, this.diameter);
  }
}
