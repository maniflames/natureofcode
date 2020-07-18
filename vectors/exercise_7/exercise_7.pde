void setup() {
  //The PVector v equals (1,5).
  PVector v = new PVector(1,5);
  //The PVector u equals v multiplied by 2.
  PVector u = PVector.mult(v, 2);
  //The PVector w equals v minus u.
  PVector w = PVector.sub(v, u);
  //Divide the PVector w by 3.
  w.div(3); 
  println(w);
}
