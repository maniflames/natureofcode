Ball ball;
int boxWidth = 350;
float sceneRotation = 3;

void setup() {
  size(720, 720, P3D);
  
  ball = new Ball(0, 0, 0, 35);
}

void draw() {
  translate(width / 2, height / 2);
  background(35); 
  lights();
  
  noFill();
  stroke(255);
  rotateY((sceneRotation / PI));
  box(boxWidth);
  
  ball.render();
  ball.renderVelocity();
  
  if(ball.location.x - ball.radius <= -(boxWidth/2) || ball.location.x + ball.radius >= (boxWidth/2)) {
    ball.velocity.x *= -1;
    ball.acceleration.x *= -1;
    ball.velocity.add(ball.acceleration); 
    ball.velocity.limit(6); 
  }
  
  if(ball.location.y - ball.radius <= -(boxWidth/2) || ball.location.y + ball.radius >= (boxWidth/2)) {
    ball.velocity.y *= -1;
    ball.acceleration.y *= -1;
    ball.velocity.add(ball.acceleration); 
    ball.velocity.limit(6); 
  }
  
  if(ball.location.z - ball.radius <= -(boxWidth/2) || ball.location.z + ball.radius >= (boxWidth/2)) {
    ball.velocity.z *= -1;
    ball.acceleration.z *= -1;
    ball.velocity.add(ball.acceleration); 
    ball.velocity.limit(6); 
  }
  
  ball.step();
  sceneRotation += 0.015;
}
