Car car;

void setup() {
  size(350, 350);  
  car = new Car(new PVector(width / 2, height / 2), 8);
}

void draw() {
  background(35);
  
  if(car.position.x - (car.dimensions.x / 2) > width) {
    car.position.x = 0; 
  }
  
  if(keyPressed) {
    if(keyCode == 38) {
      car.acceleration.x = 0.01; 
    } else if(keyCode == 40) {
      car.acceleration.x = -0.01; 
    }
  }
  
  car.update(); 
}
 
