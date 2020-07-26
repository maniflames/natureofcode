class Liquid {
  PVector position;
  PVector dimensions;
  float c; 
  
  Liquid(PVector position, PVector dimensions, float c) {
    this.position = position;
    this.dimensions = dimensions; 
    this.c = c; 
  }
  
  boolean contains(Ball ball) {
    return ball.position.x >= this.position.x 
    && ball.position.x <= this.position.x + this.dimensions.x
    && ball.position.y >= this.position.y
    && ball.position.y <= this.position.y + this.dimensions.y;
  }
  
  //NOTE: drag is relative to the velocity so two objects with the same mass falling from different 
  //      heights will display pretty much the same speed because the difference acculimated 
  //      acceleration is neglegtible 
  
  PVector dragForce(Ball ball) {
    PVector force = ball.velocity.copy();
    force.mult(-1); 
    force.normalize();
    
    float dragMagnitude = this.c * pow(ball.velocity.mag(), 2); 
    force.mult(dragMagnitude);
    return force; 
  }
  
  void update() {
    fill(55);
    noStroke(); 
    rect(this.position.x, this.position.y, this.dimensions.x, this.dimensions.y);
  }
}
