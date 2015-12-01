PImage babe;

void setup(){
  babe = loadImage ("babe.png");
  size (651,431);
}

void draw(){
  image(babe, 0, 0);
  filter(GRAY);
}