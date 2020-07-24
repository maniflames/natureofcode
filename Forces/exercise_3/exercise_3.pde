Ball ball;

void setup() {
  size(720, 720); 
  ball = new Ball(new PVector(width / 2, height / 2), 5.0);
}

void draw() {
  background(35);
  
  PVector gravity = new PVector(0, 0.1);
  PVector wind = new PVector(random(-0.01, 0.01), 0); 
  
  ball.applyForce(gravity); 
  ball.applyForce(wind); 
  keepInWindow();
  
  ball.update(); 
}

void keepInWindow() {
  PVector pushback = new PVector(0, 0); 
  
  //lower edge detection
  float distanceToBottom = height - ball.position.y + (ball.diameter / 2.0); 
  pushback.y = 20; 
  ball.applyForce(PVector.div(pushback, (1 - distanceToBottom))); 
  pushback.y = 0; 
  
  //upper edge detection
  float distanceToTop = ball.position.y - (ball.diameter / 2.0); 
  pushback.y = -20; 
  ball.applyForce(PVector.div(pushback, (1 - distanceToTop))); 
  pushback.y = 0; 
  
  //right edge detection
  float distanceToRight = width - ball.position.x + (ball.diameter / 2.0); 
  pushback.x = 20; 
  ball.applyForce(PVector.div(pushback, (1 - distanceToRight))); 
  pushback.x = 0; 
  
  //left edge detection
  float distanceToLeft = ball.position.x - (ball.diameter / 2.0); 
  pushback.x = -20; 
  ball.applyForce(PVector.div(pushback, (1 - distanceToLeft))); 
  pushback.x = 0; 
}
