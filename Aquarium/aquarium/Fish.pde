class Fish {
  protected int lastChange = 0;
  float maxSpeed = 3; 
  int radius = 25;
  PVector location; 
  PVector velocity;
  PVector acceleration; 
  PVector area;
  
  Fish(PVector location, PVector area) {
    this.location = location; 
    this.area = area;
    this.velocity = new PVector();
    this.changeAcceleration();
  }
  
  void changeAcceleration() {
    this.acceleration = new PVector(random(-0.05, 0.05), random(-0.05, 0.05), random(-0.05, 0.05));
  }
  
  void update() {
    if(millis() - this.lastChange % 500 >= 0) {
      this.changeAcceleration();
      this.lastChange = millis();
    }
    
    if(this.location.x + this.radius >= (this.area.x / 2)) {
      this.location.x = -(this.area.x / 2) + this.radius + 5;
    }
    
    if(this.location.x - this.radius <= -(this.area.x / 2)) {
       this.location.x = (this.area.x / 2) - this.radius - 5;
    }
    
    if(this.location.y + this.radius >= (this.area.y / 2)) {
      this.location.y = -(this.area.y / 2) + this.radius + 5;
    }
    
    if(this.location.y - this.radius <= -(this.area.y / 2)) {
       this.location.y = (this.area.y / 2) - this.radius - 5;
    }
    
    if(this.location.z + this.radius >= (this.area.z / 2)) {
      this.location.z = -(this.area.z / 2) + this.radius + 5;
    }
    
    if(this.location.z - this.radius <= -(this.area.z / 2)) {
       this.location.z = (this.area.z / 2) - this.radius - 5;
    }
    
    this.velocity.add(this.acceleration);
    this.velocity.limit(this.maxSpeed); 
    this.location.add(this.velocity); 
    
    noFill();
    stroke(255);
    sphereDetail(6);
    translate(this.location.x, this.location.y);
    sphere(this.radius);
    translate(-this.location.x, -this.location.y);
  }
}
