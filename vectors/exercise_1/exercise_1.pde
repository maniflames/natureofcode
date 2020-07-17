//2D bouncing ball \w vectors 
PVector location;
PVector velocity;

void setup() {
  size(350, 350); 
  location = new PVector(width / 2, height / 2);
  velocity = new PVector(random(-5, 5), random(-5, 5));
}

void draw() {
  background(35); 
  circle(location.x, location.y, 50);
  
  if(location.x - 25 <= 0 || location.x + 25 >= width) {
    velocity.x *= -1;
  }
  
  if(location.y - 25 <= 0 || location.y + 25 >= width) {
    velocity.y *= -1;
  }
  
  location.add(velocity);
}
