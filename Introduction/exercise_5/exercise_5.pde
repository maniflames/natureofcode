import java.util.Random;

GaussianWalker walker; 

void setup() {
  size(350, 350); 
  background(35);
  walker = new GaussianWalker(width / 2, height / 2, 8, 4); 
}

void draw() {
  walker.step();
  walker.render(); 
}
