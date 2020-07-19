ArrayList<Fish> fish = new ArrayList<Fish>(); 
PVector aquariumDimentions = new PVector(350, 350, 350); 

void setup() {
  size(800, 800, P3D);
  fish.add(new Fish(new PVector(), aquariumDimentions));
  fish.add(new BigFish(new PVector(), aquariumDimentions));
  fish.add(new SmallFish(new PVector(), aquariumDimentions));
}

void draw() {
  background(35);
  noFill();
  stroke(255);
  translate(width / 2, height / 2);
  box(aquariumDimentions.x, aquariumDimentions.y, aquariumDimentions.z);
  
  for(Fish f : fish) {
    f.update(); 
  }
}
