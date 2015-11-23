 PImage edsface;
PImage SamuelsMask2;

void setup() {

  size(800, 600);
  //initialize PImages
  edsface= loadImage("edsface.jpg");
  SamuelsMask2 = loadImage("SamuelsMask2.jpg");

  //use mask
  edsface.mask(SamuelsMask2);
}

void draw() {
  background(0);
  //draw image
  image(edsface, mouseX, mouseY);
}