Attractor attractor; 
Mover mover;

void setup() {
  size(720, 720);
  PVector center = new PVector(width / 2, height / 2); 
  PVector adjust = new PVector(150, 15);
  attractor = new Attractor(center, 20, 0.6);
  mover = new Mover(PVector.add(center, adjust), new PVector(0, 1), 5); 
}

void draw() {
  background(35); 
  
  mover.applyForce(attractor.gravitationalForce(mover));
  attractor.update();
  mover.update(); 
}
