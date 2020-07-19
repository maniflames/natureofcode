class Ball {
  PVector location;
  PVector velocity;
  PVector acceleration;
  int radius; 

  Ball(int x, int y, int z, int r) {
    this.location = new PVector(x, y, z);
    this.velocity = new PVector(); 
    //this.acceleration = new PVector(random(-0.02, 0.02), random(-0.01, 0.01), random(-0.02, 0.02));
    this.acceleration = new PVector(random(-1, 1), random(-0.5, 0.5), random(-1, 1));
    this.velocity.add(acceleration);
    this.radius = r;
  }
  
  void step() {
    //this.velocity.add(this.acceleration); 
    //this.velocity.limit(4);    
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
