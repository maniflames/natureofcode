import java.util.Random;

Random generator;
float meanColor = 150;
float sdColor = 255 * 0.3;
float meanx;
float meany;
float sdx;
float sdy;

void setup() {
  size(1000, 350); 
  background(35);
  noStroke();
  generator = new Random(); 
  meanx = width / 2.0;
  meany = height / 2.0;
  sdx = meanx * 0.3;
  sdy = meany * 0.3;
}

void draw() {
  float randx = (float)generator.nextGaussian(); 
  float randy = (float)generator.nextGaussian(); 
  float randColor = (float)generator.nextGaussian(); 
  float x = (randx * sdx) + meanx;
  float y = (randy * sdy) + meany;
  int c = (int)((randColor * sdColor) + meanColor); 
  fill(c, 30);
  circle(x, y, 15);
}

//conclusion: normal distribution can be used to randomize postion but is too subtle for generating a diverse color pallete
