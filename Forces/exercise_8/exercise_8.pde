Attractor attractor; 
ArrayList<Mover> movers = new ArrayList<Mover>(); 

void setup() {
  size(720, 720); 
  background(35);
  
  attractor = new Attractor(new PVector(width / 2, height /2), 20, 0.4);
  movers.add(new Mover(new PVector((width / 2) + 80, (height /2)), 1));
  movers.add(new Mover(new PVector((width / 2) + 160, (height /2)), 1));
}

void draw() {
  for(Mover mover : movers) {
    mover.applyForce(attractor.gravitationalForce(mover));
    mover.update();
  }
}
