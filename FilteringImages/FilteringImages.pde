PImage disgusting;

void setup(){
  disgusting = loadImage("imgres.jpg");
  size(182, 183);
}

void draw(){
  background(disgusting);
  filter(INVERT);
  noStroke();
  fill(255, 0, 0);
  ellipse(72, 60, 5, 5);
  ellipse(131, 62, 5, 5);
}