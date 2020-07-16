int rows, columns, landscapeWidth, landscapeHeight; 
int scale = 20; 
float yoffStart = 0.0;

void setup() {
  size(600, 600, P3D); 
  
  landscapeWidth = 1200;
  landscapeHeight = 900;
  
  rows = landscapeHeight / scale; 
  columns = landscapeWidth / scale; 
}

void draw() {
  background(35);
  stroke(255); 
  noFill(); 
  
  //to make sure the content does not dissapear when drawing in 3D space
  //the x-axis rotation has to be based on an origin placed in the middle 
  //instead of the upper left
  
  translate(width/2, height/2);
  rotateX(PI/2.8);
  translate(-landscapeWidth/2, -landscapeHeight/2); 
      
  float yoff = yoffStart; // animate by moving the noise function across the y axis over time
  
  for(int y = 0; y < rows; y++) {
    float xoff= 0.0;
    beginShape(TRIANGLE_STRIP);
    for(int x = 0; x < columns; x++) {
      float z = map(noise(xoff, yoff), 0, 1, -120, 120);
      float zNext = map(noise(xoff, yoff + 0.1), 0, 1, -120, 120);
      xoff += 0.1;
      
      vertex(x * scale, y * scale, z); 
      vertex(x * scale, (y * scale) + scale, zNext);
    }
    yoff += 0.1;
    endShape();
  }
  
  yoffStart -= 0.05;
}
