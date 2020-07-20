Balloon balloon;
float xoff;

void setup() {
  size(720, 720); 
  balloon = new Balloon(new PVector(width / 2, height / 2)); 
  xoff = 0.0;
}

void draw() {
  background(35);
  applyHelium();
  applyWind(); 
  balloon.update(); 
}

void applyHelium() {
  PVector helium = new PVector(0, -0.02);
  balloon.applyForce(helium);
  
  if(balloon.position.y - (balloon.diameter / 2) <= 0) {
    balloon.velocity.y *= -1; 
  } 
}

void applyWind() {
  float x = map(noise(xoff += 0.01), 0, 1, -0.02, 0.02); 
  PVector wind = new PVector(x, 0); 
  balloon.applyForce(wind); 
  
  if(balloon.position.x - (balloon.diameter / 2) <= 0 || balloon.position.x + (balloon.diameter / 2) >= width) {
    balloon.velocity.x *= -1; 
  } 
}
