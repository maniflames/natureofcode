ArrayList<Box> boxes = new ArrayList<Box>();
Liquid liquid; 

void setup() {
  size(720, 720);
 
  boxes.add(new Box(new PVector(width / 2, height / 2),new PVector(75, 75), 3));
  boxes.add(new Box(new PVector((width / 2) - 200, height / 2),new PVector(175, 75), 3));
  boxes.add(new Box(new PVector((width / 2) + 125, height / 2),new PVector(25, 75), 3));
  liquid = new Liquid(new PVector(0, height - 240), new PVector(width, 240), 0.25); 
}

void draw() {
  background(35);
  liquid.update();
  
  for(Box box : boxes) {
      PVector gravity = new PVector(0, 0.1 * box.mass);
      box.applyForce(gravity);
      
      if(liquid.contains(box)) {
        box.applyForce(liquid.dragForce(box));
      }
      
      if(box.position.y + (box.dimensions.y / 2) > height) {
        box.velocity.y *= -1;
        box.position.y = height - (box.dimensions.y / 2);
      }
      
      box.update();
  }
}
