PImage mainImage;
PImage mask;
 void setup() {
  size(800, 600);
  mainImage = loadImage("BB.jpg");
  mask = loadImage("LIMBO.jpg");
  mainImage.mask(mask);
}

void draw() {
  background(0);
  image(mainImage, mouseX-300, mouseY-300);
}