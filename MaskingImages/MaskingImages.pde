//declare PImages
PImage cacti;
PImage mask;

void setup() {
  
  size(500,300);
  //initialize PImages
  cacti = loadImage("cacti.jpg");
  mask = loadImage("mask.jpg");
  
  //use mask
  cacti.mask(mask);
}

void draw() {
  background(0);
  //draw image
  image(cacti,mouseX,mouseY);
}