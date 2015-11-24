PImage glass;

void setup() {
  size(610,458);
  glass = loadImage("glass.jpg");
}

void draw() {
  background(0);
  image(glass,0,0);
}