PVector velocity;
PVector acceleration;

void setup() {
  velocity = new PVector(0, 0);
  acceleration = new PVector(random(-0.1, 0.1), random(-0.1, 0.1));
}

void limit(float max) {
  if(velocity.mag() > max) {
    velocity.normalize(); //set vector back to a length of 1 
    velocity.mult(max); //mulitply vector with max value
  }
}

void draw() {
  println(velocity.mag());
  println(velocity.x); 
  velocity.add(acceleration);
  limit(10.0);
}
