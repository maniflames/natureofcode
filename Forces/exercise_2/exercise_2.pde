void setup() {
  TestObj t1 = new TestObj();
  TestObj t2 = new TestObj();
  
  PVector force = new PVector(0.1, 0); 
  t1.applyForce(force);
  t2.applyForce(force);
  println(force.x == 0.1); 
}
