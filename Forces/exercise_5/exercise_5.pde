ArrayList<Ball> balls = new ArrayList<Ball>();
Liquid liquid;

void setup() {
  size(720, 720);
  balls.add(new Ball(new PVector(width / 2, height / 2), 3));
  balls.add(new Ball(new PVector((width / 2) - 100, (height / 2) - 300), 3));
  balls.add(new Ball(new PVector((width / 2) + 100, height / 2), 1));
  liquid = new Liquid(new PVector(0, height - 240), new PVector(width, 240), 0.1);
}

void draw() {
  background(35); 
  liquid.update(); 
  
  for(Ball ball: balls) {
    PVector gravity = new PVector(0, 0.1 * ball.mass);
    ball.applyForce(gravity); 
  
    if(ball.position.y + (ball.diameter / 2) > height) {
      ball.velocity.y *= -1; 
      ball.position.y = height - (ball.diameter / 2); 
    }
  
    if(liquid.contains(ball)) {
      ball.applyForce(liquid.dragForce(ball));
    }
  
      ball.update(); 
  }
}
