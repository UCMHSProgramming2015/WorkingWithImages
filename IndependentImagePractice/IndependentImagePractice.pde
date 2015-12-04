PImage dolphin, ocean;
int x, y, vx, vy;
float angle;

void setup() {
  size(1200, 800);
  dolphin=loadImage("dolphin.png");
  ocean=loadImage("ocean.jpg");
  x=0;
  y=2*height/3;
  vx=5;
  vy=10;
  angle = -PI/8;
}

void draw() {
  image(ocean, 0, 0, width, height);
  //line(0,height/3,width,height/3);
  translate(x, y);
  rotate(angle);
  image(dolphin, 0, 0);
  x+=vx;
  y-=vy;
  if (y<=height/8 || y>=height-100) {
    vy*=-1;
    angle*=-1;
  }
  if (x>width) {
    x=0;
  }
}