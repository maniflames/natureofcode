RandomWalker walker; 

void setup() {
  size(350, 350); 
  background(35);
  walker = new RandomWalker(width / 2, height / 2); 
}

void draw() {
  walker.step();
  walker.render();
}
