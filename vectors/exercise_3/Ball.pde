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
  
  void render() {
    translate(this.location.x, this.location.y);
    fill(255);
    noStroke();
    sphere(this.radius);
  }
} 
