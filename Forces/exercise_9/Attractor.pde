class Attractor {
  PVector position; 
  float mass;
  float G; 
  float diameter;
  
  Attractor(PVector position, float mass, float G) {
    this.position = position;
    this.mass = mass;
    this.G = G; 
    this.diameter = mass * 2; 
  }
  
  PVector gravitationalForce(Mover mover) {
    PVector direction = PVector.sub(this.position, mover.position);
    float distance = constrain(direction.mag(), 5, 25);
    direction.normalize(); 
    
    float magnitude = pow(distance, 2) / (this.G * this.mass * mover.mass); //greater distance = more attratction
    direction.mult(magnitude);
    
    return direction;
  }
  
  void update() {
    noStroke();
    fill(95); 
    circle(this.position.x, this.position.y, this.diameter); 
  }
}
