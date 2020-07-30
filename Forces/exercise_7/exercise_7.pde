Plane plane;

void setup() {
  size(720, 720);
  plane = new Plane(new PVector(0, height - 60), new PVector(120, 60), 1);
}

void draw() {
  background(35); 
  
  if(plane.position.y >= height / 2) {  
    plane.applyForce(new PVector(0.01, -0.003));
  } 
  plane.applyForce(new PVector(0, 0.0005));
  plane.applyForce(dragForce(0.01));
  
  if(plane.position.x > width) {
    plane.position.x = -plane.dimensions.x; 
  }
  plane.update();
}

PVector dragForce(float c) {
  PVector drag = plane.velocity.copy();
  drag.mult(-0.5);
  drag.normalize();
  float maginitude = pow(plane.velocity.mag(), 2) * c * (plane.dimensions.y / 100);
  drag.mult(maginitude);
  
  return drag;
}
