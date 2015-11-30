PImage kirby; 
PImage toonlink;
int scalefactor = 2;
float g;
float x, y, velX, velY, diam, blurry;

void setup() {
  size(1400, 600);
  x = width/2;
  y = height/2;
  diam = 100;
  velX = (-5);
  velY= (5);
  g =.1;
  blurry=6;
  kirby=loadImage("kirby.gif");
  toonlink=loadImage("toon link.jpg");
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(255);
  velY= velY + g; //adding gravity
  image(kirby, x, y, diam, diam);
  image(toonlink, mouseX, height, diam, diam);
  tint(frameRate%360, 100, 100, 100);
 //filter(BLUR, blurry);
  x += velX;
  y += velY;
  if (x + diam >= width) {
    velX = -abs(velX)*1.5; //if the ball hits the right wall, assign x velocity the negative version of itself
    velY = abs(velY);
    blurry= blurry-1;
  } else if (x + diam/15 <= 0) {
    velX = abs(velX);     //if the ball hits the left wall, assign x velocity the positive version of itself
    velY = abs(velY);
      blurry= blurry-1;
  }
  if (y + diam >= height) { //bounce at bottom 
    velY = -abs(velY)*.65; // reduce velY
  } else if (y - diam <= 0) { //bounce at top
    velY = abs(velY);
      blurry= blurry-1;
  }
  if (y + diam >= height && velY > 0) { //slowing velY at botom 
    velY = 0;
    g = 0;
      blurry= blurry-1;
  }
  if (y + diam/2 >= height && velY > 0 && velX > 0) { //slowing velX at bottom
    velY = 0;
    g=0;
    velX = velX *.75;
      blurry= blurry-1;
  }
  if (y > height- diam) { //keeps balls from going off screen 
    y= height - diam;
    velX= velX*.75;
  }
  if(mousePressed) {
    velY= velY-.25;
    velX = velX+.5;
    
  }else
  velY = velY+.15;
}
  
    