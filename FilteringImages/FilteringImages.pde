PImage disgusting;

void setup(){
  disgusting = loadImage("imgres.jpg");
  size(182, 183);
}

void draw(){
  background(disgusting);
  filter(INVERT);
}