class GaussianWalker {
  int x;
  int y;
  int mean;
  int sd;
  
 GaussianWalker(int x, int y, int mean, int sd) {
      this.x = x;
      this.y = y;
      this.mean = mean;
      this.sd = sd;
  }
  
  void step() {
    Random generator = new Random();
    float rand = (float)generator.nextGaussian();
    int distance = (this.sd * (int)rand) + this.mean; 
    int moves[] = {-1, 0, 1}; 
    this.x += moves[(int)random(3)] * distance;
    this.y += moves[(int)random(3)] * distance;
  }
  
  void render() {
    fill(255); 
    noStroke();
    circle(this.x, this.y, 50);
  }
}
