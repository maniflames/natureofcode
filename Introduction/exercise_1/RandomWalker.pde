class RandomWalker {
  int x;
  int y; 
  
  RandomWalker(int x, int y) {
    this.x = x; 
    this.y = y; 
  }
  
  void render() {
    fill(255); 
    noStroke();
    circle(this.x, this.y, 50);
  }
  
  void step() {
    int moves[] = {1, 1, 0, -1}; 
    int stepx = (int)random(4);
    int stepy = (int)random(4);
    
    this.x += moves[stepx];
    this.y += moves[stepy];
  }
}
