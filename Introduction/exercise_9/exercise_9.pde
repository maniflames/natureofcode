float zoff = 0.00; 

void setup() {
  size(350, 350); 
  background(35);   
}

void twoDimentionalPerlinNoise() {
  loadPixels(); 
  
  float yoff = 0.0;
  for(int y = 0; y < height; y++) {
    float xoff = 0.0; 
    for(int x = 0; x < width; x++) {
      float brightness = map(noise(xoff, yoff, zoff), 0, 1, 0, 255);
      pixels[x + (y * width)] = color(brightness);
      xoff += 0.01; 
    }
    yoff += 0.01;
  }
  
  updatePixels();
}

void draw() {
  twoDimentionalPerlinNoise();
  zoff += 0.005;
}
