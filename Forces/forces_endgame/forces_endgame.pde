PhysicsSimulation gravitational;
PhysicsSimulation fluid;
PhysicsSimulation friction;

void setup() {
  size(720, 720, P3D);
  ForceCalculator fluidForces[] = {new Gravity(), new Fluid()};
  ForceCalculator gravitationalForces[] = {new Gravitational()};
  ForceCalculator frictionForces[] = {new Friction(), new Gravity()};
  
  fluid = new PhysicsSimulation(new PVector(width / 2, height /2), fluidForces); //Lambda's are not available unfortunately :/ 
  gravitational = new PhysicsSimulation(new PVector((width / 2) - 150, height /2), gravitationalForces);
  friction = new PhysicsSimulation(new PVector((width / 2) + 150, height /2), frictionForces);  
}

void draw() {
  background(35);
  fluid.update(); 
  gravitational.update();
  friction.update(); 
}
