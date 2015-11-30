PImage kirby; 
int scalefactor = 2;
float g;
float x, y, velX, velY, diam;

void setup() {
  size(800, 600);
  x = width/2;
  y = height/2;
  diam = 100;
  velX = (-5);
  velY= (5);
  g =.1;
  kirby=loadImage("kirby.gif");
}

void draw() {
  background(255);
  velY= velY + g; //adding gravity
  image(kirby, x, y, diam, diam);
  x += velX;
  y += velY;
  if (x + diam >= width) {
    velX = -abs(velX); //if the ball hits the right wall, assign x velocity the negative version of itself
    velY = abs(velY)*2;
  } else if (x + diam/15 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
    velY = abs(velY)*2;
  }
  if (y + diam >= height) { //bounce at bottom 
    velY = -abs(velY)*.65; // reduce velY
  } else if (y - diam <= 0) { //bounce at top
    velY = abs(velY);
  }
  if (y + diam >= height && velY > 0) { //slowing velY at botom 
    velY = 0;
    g = 0;
  }
  if (y + diam/2 >= height && velY > 0 && velX > 0) { //slowing velX at bottom
    velY = 0;
    g=0;
    velX = velX *.75;
  }
  if (y > height- diam) { //keeps balls from going off screen 
    y= height - diam;
    velX= velX*.75;
  }
}