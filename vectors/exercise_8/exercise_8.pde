PVector mouse;
PVector location;
PVector velocity;

void setup() {
  size(600, 600);
  location = new PVector(width / 2, height / 2); 
  velocity = new PVector(0, 0);
}

void draw() {
  background(35);
  mouse = new PVector(mouseX, mouseY);
  
  PVector distance = PVector.sub(mouse, location);
  PVector direction = distance.copy();
  direction.normalize(); 
  PVector acceleration = direction;
  acceleration.mult(distance.mag() / 350);

  velocity.add(acceleration); 
  velocity.limit(4);
  location.add(velocity);
  
  noStroke();
  circle(location.x, location.y, 50);
}
