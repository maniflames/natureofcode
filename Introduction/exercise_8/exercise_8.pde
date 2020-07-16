void setup() {
  size(1000, 350); 
  background(0);
  noiseDetail(12); 
  twoDimentionalPerlinNoise(0.01, 0.01);
}

void twoDimentionalPerlinNoise(float xoffIncrement, float yoffIncrement) {
  loadPixels();
  
  float yoff = 0;
  for(int y = 0; y < height; y++) {
    float xoff = 0; //because rows should show values independently from each other 
    for(int x = 0; x < width; x++) {
      float brightness = map(noise(xoff, yoff), 0, 1, 0, 255); 
      pixels[x + (y*width)] = color(brightness);
      xoff += xoffIncrement; 
    }
    yoff += yoffIncrement;
  }
  
  updatePixels();
}
