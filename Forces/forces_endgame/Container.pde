class Container {
  PVector position; 
  PVector dimensions;
  
  Container(PVector position, PVector dimensions) {
    this.position = position; 
    this.dimensions = dimensions; 
  }
  
  void retain (Ball ball) {
    if( ball.position.x - ball.radius < this.position.x - (this.dimensions.x / 2)
    || ball.position.x + ball.radius > this.position.x + (this.dimensions.x / 2)) {
      ball.velocity.x *= -1;
    }
    
    if(ball.position.y - ball.radius < this.position.y - (this.dimensions.y / 2)
    || ball.position.y + ball.radius > this.position.y + (this.dimensions.y / 2)) {
      ball.velocity.y *= -1;
      
      if(ball.position.y + ball.radius > this.position.y + (this.dimensions.y / 2)) {
        ball.position.y = this.position.y + (this.dimensions.y / 2) - ball.radius;
      }
    }
    
    if(ball.position.z - ball.radius < this.position.z - (this.dimensions.z / 2)
    || ball.position.z + ball.radius > this.position.z + (this.dimensions.z / 2)) {
      ball.velocity.z *= -1;
    }
  }
  
  void update() {
    stroke(255);
    noFill();
    
    translate(this.position.x, this.position.y);
    box(this.dimensions.x, this.dimensions.y, this.dimensions.z);
    translate(-this.position.x, -this.position.y);
  }
}
