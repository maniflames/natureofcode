Car car;

void setup() {
  size(350, 350);  
  car = new Car(new PVector(width / 2, height / 2));
}

void draw() {
  background(35);
  
  if(car.position.x - (car.dimensions.x / 2) > width) {
    car.position.x = 0; 
  }
  if(car.position.x + (car.dimensions.x / 2) < 0) {
    car.position.x = width; 
  }
  
  car.update(); 
}
 
