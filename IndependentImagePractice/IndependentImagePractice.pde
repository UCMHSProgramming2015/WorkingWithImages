PImage fire;
PImage hotline;

void setup() {
  size(800, 600);
  fire= loadImage("fire.jpg");
  hotline = loadImage("hotline.jpg");
  hotline.mask(fire);
}

void draw() {
  background(map(mouseY, 0, height, 0, 255));

  image(fire, 0, 0);
  image(hotline, 0, 0);
}