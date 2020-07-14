void setup() {
  //What is the probability of drawing two aces in a row from a deck of fifty-two cards?
  float probabillityOfDrawingAce = 4.0 / 52.0; 
  println(probabillityOfDrawingAce);
  float probabillityOfDrawingAceTwice = probabillityOfDrawingAce * probabillityOfDrawingAce; 
  String answer = Float.toString(probabillityOfDrawingAceTwice);
  size(450, 300);
  background(35); 
  fill(255);
  textAlign(CENTER); 
  textSize(48);
  text(answer + " %", width / 2 , height / 2);
}
