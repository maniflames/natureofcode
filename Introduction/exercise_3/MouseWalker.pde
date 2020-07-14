class MouseWalker {
  int x;
  int y;
  
  MouseWalker(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  private int[] getMouseDirection() {
    int mouseDirectionX = mouseX < (width/2) ? 0 : 1; 
    int mouseDirectionY = mouseY < (height/2) ? 0 : 1;
    
    int direction[] = {mouseDirectionX, mouseDirectionY};
    return direction;
  }
  
  void step() {
    boolean followMouse = ((int)random(2)) == 0;
    int moves[] = {-1, 1};
    
    if(followMouse) {
      int mouseDirection[] = getMouseDirection(); 
      
      this.x += moves[mouseDirection[0]];
      this.y += moves[mouseDirection[1]];
      return;
    }
    
    this.x += moves[(int)random(2)];
    this.y += moves[(int)random(2)];
  }
  
  void render() {
    fill(255);
    noStroke();
    circle(this.x, this.y, 50); 
  }
}
