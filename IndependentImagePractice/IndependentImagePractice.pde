PImage kirby; 
PImage toonlink;
PImage bridge;
int scalefactor = 2;
float g;
float x, y, x2, y2, velX, velY, diam, blurry, velY2, velX2;
boolean up, down, left, right;

void setup() {
  size(1400, 600);
  x = width/2;
  y = height/2;
  x2 = 400;
  y2 = 475;
  diam = 100;
  velX = (-5);
  velY= (5);
  velX2 = (-5);
  velY2= (5);
  g =.1;
  blurry=6;
  kirby=loadImage("kirby.gif");
  toonlink=loadImage("toon link.jpg");
  bridge=loadImage("bridge.jpg");
  colorMode(HSB, 360, 100, 100, 100);
}

void draw() {
  background(0);
  velY= velY + g; //adding gravity
  velY2= velY2 + g;
  tint(255);
  image(bridge, 0, 0, width, height);
  tint(frameRate%360, 100, 100, 100); //rainbow tint color 
  image(toonlink, x2, y2, diam, diam); //insert toonlink
  if (x2 + diam >= width) {
    velX2 = -abs(velX2)*1.15; //if the kirby hits the right wall, bounce and slow down
    velY2 = abs(velY2);
  } else if (x2 + diam/15 <= 0) {
    velX2 = abs(velX2)*1.15;     //if the kirby hits the left wall, bounce and slow down
    velY2 = abs(velY2)*1.15;
  }
  if (y2 + diam >= 475) { //bounce at bottom 
    velY2 = -abs(velY2)*.65; // reduce velY
  } else if (y2 - diam <= 0) { //bounce at top
    velY2 = abs(velY2);
  }
  if (y2 + diam >= 475 && velY2 > 0) { //slowing velY at botom 
    velY2 = 0;
    g = 0;
  }
  if (left) {
    x2=x2-10;
  }
  if (right) {
    x2= x2 +10;
  }

  image(kirby, x, y, diam, diam); //insert kirby


  //filter(BLUR, blurry);
  x += velX;
  y += velY;
  x2 += 0;
  y2 += 0;


  if (x + diam >= width) {
    velX = -abs(velX)*1.05; //if the kirby hits the right wall, bounce and slow down
    velY = abs(velY);
  } else if (x + diam/15 <= 0) {
    velX = abs(velX)*1.15;     //if the kirby hits the left wall, bounce and slow down
    velY = abs(velY)*1.15;
  }
  if (y + diam >= height-25) { //bounce at bottom 
    velY = -abs(velY)*.65; // reduce velY
  } else if (y + diam <= 0) { //bounce at top
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
    blurry= blurry-1;
  }
  if (y > 475) { //keeps balls from going off screen 
    y= 475;
    velX= velX*.75;
  }
  if (mousePressed) {
    velY= velY-.25; //make kirby fly 
    velX = velX+.5;
  } else
    velY = velY+.15;
}
void keyPressed() { 

  if (keyCode==LEFT) {
    left = true;
  }
  if (keyCode==RIGHT) {

    right = true;
  }
  if (keyCode==UP) {

    up = true;
  }
}
void keyReleased() {
  if (keyCode==LEFT) {
    left = false;
  }
  if (keyCode==RIGHT) {
    right = false;
  }
  if (keyCode==UP) {

    up = false;
  }
}