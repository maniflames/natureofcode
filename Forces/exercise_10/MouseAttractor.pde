class MouseAttractor {
  float mass;
  float G;
  
  MouseAttractor(float mass, float G) {
    this.mass = mass;
    this.G = G; 
  }
  
  PVector gravitationalForce(Mover mover) {
    PVector direction = PVector.sub(new PVector(mouseX, mouseY), mover.position);
    float distance = constrain(direction.mag(), 5, 25);
    direction.normalize();
    
    float magnitude = (this.G * this.mass * mover.mass) / pow(distance, 2);
    return direction.mult(magnitude);
  }
}
