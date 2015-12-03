PImage pugmask, trump;

void setup(){
  pugmask = loadImage("pugmask.png");
  trump = loadImage("hynnnrrrgh.jpg");
  size(290, 174);
}

void draw(){
  background(trump);
  image(pugmask, 15, -80);
  filter(INVERT);
}