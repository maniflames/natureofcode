class TestObj {
  PVector acceleration = new PVector(); 
  float mass = 3.0;
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }
}
