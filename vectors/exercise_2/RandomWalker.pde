class RandomWalker {
  PVector location;
  PVector velocity; 
  
  RandomWalker(int x, int y) {
    location = new PVector(x, y);
    velocity = new PVector(random(-10, 10), random(-10, 10));
  }
  
  void step() {
    location.add(velocity);
    velocity.x = random(-10, 10);
    velocity.y = random(-10, 10);
  }
  
  void render() {
    fill(255); 
    noStroke(); 
    circle(location.x, location.y, 15); 
  }
}
