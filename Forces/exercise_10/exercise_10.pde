MouseAttractor mouse;
ArrayList<Mover> movers = new ArrayList<Mover>();

void setup() {
  size(720, 720); 
  mouse = new MouseAttractor(20, 0.6);
  
  movers.add(new Mover(new PVector((width / 2) - 100, height / 2), 1));
  movers.add(new Mover(new PVector((width / 2) - 50, height / 2), 1));
  movers.add(new Mover(new PVector(width / 2, height / 2), 1));
  movers.add(new Mover(new PVector((width / 2) + 50, height / 2), 1));
  movers.add(new Mover(new PVector((width / 2) + 100, height / 2), 1));
}

void draw() {
  background(35);
  
  for(Mover mover : movers) {
    for(Mover otherMover : movers) {
      if(movers.indexOf(mover) == movers.indexOf(otherMover)) {
        continue;
       }
       
       mover.applyForce(otherMover.repellentForce(mover));
    }
    
    mover.applyForce(mouse.gravitationalForce(mover));
    mover.update();
  }
}
