PImage pugmask, trump;

void setup(){
  pugmask = loadImage("pugmask.png");
  trump = loadImage("praiselawdjesus.jpg");
  size(634, 414);
}

void draw(){
  background(trump);
  image(pugmask, 100, 80);
}