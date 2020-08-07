class PhysicsSimulation {
  Container container;
  Ball ball; 
  ForceCalculator forces[];
  
  PhysicsSimulation(PVector position, ForceCalculator[] forces) {
     PVector containersize = new PVector(100, 500, 100); 
     this.container = new Container(position, containersize);
     this.ball = new Ball(PVector.add(position, new PVector(0, -200)), 2); 
     this.forces = forces;
  }
  
  void update() {
    for(ForceCalculator force : forces) {
      this.ball.applyForce(force.calculate(this.ball, this.container));
    }
    
    this.container.retain(this.ball);
    this.ball.update(); 
    this.container.update(); 
  }
}
