PImage dolphin;
int x=0, y=height;

void setup(){
  size(1000,800);
  dolphin=loadImage("dolphin.png");
  frameRate(10);
}

void draw(){
  background(0,0,255);
  image(dolphin,x,y);
  x+=10;
  y-=1;
} 