class PerlinWalker {
  int x; 
  int y; 
  float t;
  
  PerlinWalker(int x, int y) {
    this.x = x;
    this.y = y;
    this.t = 0; 
  }
  
  void step() {
    //specifially basing just the stepsize on perlin noise
    int directions[] = {-1, 0, 1};
    int directionx = (int)random(3);
    int directiony = (int)random(3);
    
    float stepSize = map(noise(this.t), 0, 1, 0, 5);

    this.x += (stepSize * directions[directionx]);
    this.y += (stepSize * directions[directiony]);
    
    this.t += 0.1; 
  }
  
  void render() {
    fill(255);
    noStroke(); 
    circle(this.x, this.y, 15); 
  }
}
