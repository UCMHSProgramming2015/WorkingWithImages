//declare Pimages

PImage image;
PImage mask;

void setup() {
  size(800,600);
  //load images
  image = loadImage("image.jpg");
  mask = loadImage("mask.jpg");
  //mask the image
  image.mask(mask);
  imageMode(CENTER); //so mouse is in the center
}

void draw() {
  background(0);
  //show the image
  image(image, mouseX,mouseY);
}