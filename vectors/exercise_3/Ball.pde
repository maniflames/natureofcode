class Ball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  int radius; 

  Ball(int x, int y, int z, int r) {
    this.location = new PVector(x, y, z);
    this.velocity = new PVector(); 
    this.acceleration = new PVector(random(-0.009, 0.009), random(-0.009, 0.009), random(-0.009, 0.009));
    this.radius = r;
  }
  
  void step() {
    this.velocity.add(this.acceleration); 
    this.velocity.limit(4);    
    this.location.add(this.velocity); 
  }
  
  void renderVelocity() {
    translate(this.location.x, this.location.y, this.location.z);
    noFill();
    stroke(255);
    
    PVector extendedVelocity = PVector.mult(this.velocity, 15);
    line(0, 0, 0, extendedVelocity.x, extendedVelocity.y, extendedVelocity.z);
    
    translate(-this.location.x, -this.location.y, -this.location.z);
  }
  
  void render() {
    translate(this.location.x, this.location.y, this.location.z);
    noFill();
    stroke(255);
    sphereDetail(8, 4); 
    sphere(this.radius);
    
    translate(-this.location.x, -this.location.y, -this.location.z);
  }
} 
