class Ball {
  PVector location;
  PVector velocity;
  int radius; 

  Ball(int x, int y, int z, int r) {
    this.location = new PVector(x, y, z);
    this.velocity = new PVector(random(-3, 3), random(-3, 3), random(-3, 3));
    this.radius = r;
  }
  
  void step() {
    location.add(velocity); 
  }
  
  void renderVelocity() {
    translate(this.location.x, this.location.y, this.location.z);
    noFill();
    stroke(255);
    
    PVector extendedVelocity = PVector.mult(this.velocity, 30);
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
