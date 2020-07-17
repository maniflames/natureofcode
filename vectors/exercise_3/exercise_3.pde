Ball ball;
int boxWidth = 200;
float sceneRotation = 3; 

void setup() {
  size(350, 350, P3D);
  
  ball = new Ball(0, 0, 0, 25);
}

void draw() {
  translate(width / 2, height / 2);
  background(35); 
  lights();
  
  noFill();
  stroke(255);
  rotateY(-(sceneRotation / PI));
  box(boxWidth);
  
  ball.render();
  
  if(ball.location.x - ball.radius <= -(boxWidth/2) || ball.location.x + ball.radius >= (boxWidth/2)) {
    ball.velocity.x *= -1;
  }
  
  if(ball.location.y - ball.radius <= -(boxWidth/2) || ball.location.y + ball.radius >= (boxWidth/2)) {
    ball.velocity.y *= -1;
  }
  
  if(ball.location.z - ball.radius <= -(boxWidth/2) || ball.location.z + ball.radius >= (boxWidth/2)) {
    ball.velocity.z *= -1;
  }
  
  
  ball.step();
  sceneRotation += 0.03;
}
