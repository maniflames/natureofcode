Ball ball;

void setup() {
  size(720, 720);
  ball = new Ball(new PVector(width / 2, height /2), 3);
}

void draw() {
  background(35); 
  
  PVector wind = new PVector(random(-0.3, 0.3), 0); 
  PVector gravity = new PVector(0, 0.1 * ball.mass);
  PVector friction = ball.velocity.copy();
  
  //friction direction  
  friction.normalize();
  friction.mult(-1); 
  
  //friction magnitude
  float c = 0.01; 
  float normal = 1;
  float frictionMag = c*normal; 
  friction.mult(frictionMag);
  
  if(ball.position.x < width /2) {
    ball.applyForce(friction); 
  }
  
  ball.applyForce(gravity); 
  ball.applyForce(wind); 
  
  if(ball.position.x - (ball.diameter / 2) < 0 || ball.position.x + (ball.diameter /2) > width) {
    ball.velocity.x *= -1;
  }
  
  if(ball.position.y - (ball.diameter / 2) < 0 || ball.position.y + (ball.diameter /2) > height) {
    ball.velocity.y *= -1;
    ball.position.y = height - (ball.diameter /2); 
  }
  
  ball.update(); 
}
