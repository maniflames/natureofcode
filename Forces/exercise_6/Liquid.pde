class Liquid {
  PVector position;
  PVector dimensions;
  float c; 
  
  Liquid(PVector position, PVector dimensions, float c) {
    this.position = position; 
    this.dimensions = dimensions;
    this.c = c;
  }
  
  boolean contains(Box box) {
    return box.position.x >= this.position.x
           && box.position.x <= this.position.x + this.dimensions.x
           && box.position.y >= this.position.y
           && box.position.y <= this.position.y + this.dimensions.y;
  }
  
  PVector dragForce(Box box) {
    PVector drag = box.velocity.copy(); 
    drag.normalize(); 
    drag.mult(-0.5);
    float magnitude = pow(box.velocity.mag(), 2) * this.c * (box.dimensions.x / 100); 
    drag.mult(magnitude);
    
    return drag;
  }
   
  void update() {
    noStroke(); 
    fill(55);
    
    rect(this.position.x, this.position.y, this.dimensions.x, this.dimensions.y);
  }
}
