class Attractor {
  PVector position; 
  float mass;
  float diameter;
  float G;
  
  Attractor(PVector position, float mass, float G) {
    this.position = position;
    this.mass = mass;
    this.diameter = mass * 5;
    this.G = G; 
  }
  
  PVector gravitationalForce(Mover mover) {
    PVector direction = PVector.sub(this.position, mover.position);
    float distance = constrain(direction.mag(), 5, 25);
    direction.normalize(); 
    
    float magnitude = (this.G * this.mass * mover.mass) / pow(distance, 2);
    direction.mult(magnitude); 
    
    return direction; 
  }
  
  void update() {
    fill(95);
    noStroke(); 
    circle(this.position.x, this.position.y, this.diameter);
  }
}
