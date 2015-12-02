PImage dolphin, ocean;
int x, y,vx,vy;

void setup() {
  size(1200, 800);
  dolphin=loadImage("dolphin.png");
  ocean=loadImage("ocean.jpg");
  x=0;
  y=2*height/3;
  vx=5;
  vy=10;
}

void draw() {
  image(ocean, 0, 0, width, height);
  //line(0,height/3,width,height/3);
  image(dolphin, x, y);
  x+=vx;
  y-=vy;
  if (y<=height/8) {
    vy*=-1;
  }
}