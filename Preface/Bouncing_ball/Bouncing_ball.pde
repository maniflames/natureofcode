final int BALL_DIAMETER = 50;

float y;
float x = (BALL_DIAMETER / 2) * 1.1; //don't start at 0, otherwise the ball will hang
int speedy = 3;
int speedx = 2;

void setup() {
    size(350, 350);
    y = (float)(pixelHeight / 2);
}

void draw() {
    background(35);
    fill(255);
    circle(x, y, BALL_DIAMETER);
    
    if(x + (BALL_DIAMETER/2) >= pixelWidth || x - (BALL_DIAMETER/2) <= 0) {
      speedx = -speedx;
    } 
    
    if(y + (BALL_DIAMETER/2) >= pixelHeight || y - (BALL_DIAMETER/2) <= 0) {
      speedy = -speedy;
    } 

    x += speedx;
    y += speedy;
}
